#!/usr/bin/env bash
set -e

# Define Android tools and keystore info
BUILD_TOOLS_DIR="/home/kaoshou/.buildozer/android/platform/android-sdk/build-tools/37.0.0"
ZIPALIGN="${BUILD_TOOLS_DIR}/zipalign"
APKSIGNER="${BUILD_TOOLS_DIR}/apksigner"
KEYSTORE="investigation_diary.keystore"
KEY_ALIAS="investigation_diary"
PASSWORD="yuhan123"

# 1. Remove BOM and modify release_artifact = apk
echo "[+] Modifying buildozer.spec for APK packaging..."
python3 -c "import pathlib; p = pathlib.Path('buildozer.spec'); text = p.read_text('utf-8-sig'); text = text.replace('android.release_artifact = aab', 'android.release_artifact = apk'); p.write_bytes(text.encode('utf-8'))"

# 2. Run buildozer to build the unsigned release APK
echo "[+] Running buildozer android release to build unsigned APK..."
python3 buildozer_patch.py android release

# 3. Restore BOM and revert release_artifact = aab
echo "[+] Restoring buildozer.spec back to AAB and restoring BOM..."
python3 -c "import pathlib; p = pathlib.Path('buildozer.spec'); text = p.read_text('utf-8-sig'); text = text.replace('android.release_artifact = apk', 'android.release_artifact = aab'); p.write_bytes(text.encode('utf-8-sig'))"

# 4. Extract version and perform zipalign
APP_VERSION=$(python3 -c "import pathlib, re; text = pathlib.Path('buildozer.spec').read_text('utf-8-sig'); m = re.search(r'^version\s*=\s*(.+)$', text, re.M); print(m.group(1).strip() if m else '1.0.1')")
echo "[+] Detected App Version: ${APP_VERSION}"

echo "[+] Aligning APK..."
"${ZIPALIGN}" -f 4 "bin/InvestigationDiary-${APP_VERSION}-arm64-v8a-release-unsigned.apk" "bin/InvestigationDiary-${APP_VERSION}-aligned.apk"

# 5. Sign the APK with apksigner (enables v2/v3 signatures)
echo "[+] Signing APK with apksigner (v2/v3 signatures enabled)..."
"${APKSIGNER}" sign --ks "${KEYSTORE}" --ks-key-alias "${KEY_ALIAS}" --ks-pass pass:"${PASSWORD}" --key-pass pass:"${PASSWORD}" --out "bin/InvestigationDiary-${APP_VERSION}-release.apk" "bin/InvestigationDiary-${APP_VERSION}-aligned.apk"

# 6. Verify signature
echo "[+] Verifying APK signature..."
"${APKSIGNER}" verify --verbose "bin/InvestigationDiary-${APP_VERSION}-release.apk"

# 7. Clean up temporary files
echo "[+] Cleaning up temporary build files..."
rm -f "bin/InvestigationDiary-${APP_VERSION}-aligned.apk"
rm -f "bin/InvestigationDiary-${APP_VERSION}-arm64-v8a-release-unsigned.apk"

echo "[+] APK build and signing complete successfully!"
