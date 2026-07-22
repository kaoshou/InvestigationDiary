#!/usr/bin/env bash
set -e

KEYSTORE="investigation_diary.keystore"
KEY_ALIAS="investigation_diary"
PASSWORD="yuhan123"

echo "[+] Removing BOM from buildozer.spec for buildozer compatibility..."
python3 -c "import pathlib; p = pathlib.Path('buildozer.spec'); p.write_bytes(p.read_text('utf-8-sig').encode('utf-8'))"

echo "[+] Running buildozer android release..."
python3 buildozer_patch.py android release

echo "[+] Restoring BOM to buildozer.spec for traditional Chinese rule compliance..."
python3 -c "import pathlib; p = pathlib.Path('buildozer.spec'); p.write_bytes(p.read_text('utf-8-sig').encode('utf-8-sig'))"

APP_VERSION=$(python3 -c "import pathlib, re; text = pathlib.Path('buildozer.spec').read_text('utf-8-sig'); m = re.search(r'^version\s*=\s*(.+)$', text, re.M); print(m.group(1).strip() if m else '1.0.1')")
AAB_PATH="bin/InvestigationDiary-${APP_VERSION}-arm64-v8a-release.aab"

if [ -f "${AAB_PATH}" ]; then
    echo "[+] Signing AAB with jarsigner..."
    jarsigner -sigalg SHA256withRSA -digestalg SHA-256 \
        -keystore "${KEYSTORE}" \
        -storepass "${PASSWORD}" \
        -keypass "${PASSWORD}" \
        "${AAB_PATH}" "${KEY_ALIAS}"

    echo "[+] Verifying AAB signature..."
    jarsigner -verify "${AAB_PATH}"
    echo "[+] AAB build and signing complete successfully!"
else
    echo "[!] Warning: ${AAB_PATH} not found!"
fi
