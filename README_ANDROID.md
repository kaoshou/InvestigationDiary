# Android 建置指南

本專案已經過修改以支援透過 Buildozer 編譯 Android APK，並支援 Android 的觸控操作與存檔機制。
建議使用 **Ubuntu (WSL2 或原生 Linux 環境)** 進行建置，因為 Buildozer 在 Windows 原生環境支援較不完整。

## 1. 準備建置環境

請在您的 Ubuntu/Debian 終端機中執行以下指令，安裝 Buildozer 及其依賴套件：

```bash
sudo apt update
sudo apt install -y build-essential libffi-dev libssl-dev python3-pip python3-setuptools python3-dev unzip zip openjdk-17-jdk git autoconf libtool pkg-config zlib1g-dev libncurses5-dev libncursesw5-dev libtinfo5 cmake libstdc++6
```

安裝 Buildozer 與 Cython：

```bash
pip3 install --user --upgrade buildozer cython virtualenv
```

確保 `~/.local/bin` 已加入您的 `PATH`：

```bash
export PATH=$PATH:~/.local/bin
```

## 2. 建立 Debug APK

在專案根目錄下（包含 `buildozer.spec` 的位置），執行以下指令來初始化並開始建置：

```bash
buildozer android debug
```

> **注意：**
> 第一次執行此指令時，Buildozer 會下載 Android SDK、NDK 及 p4a 等龐大檔案，需要一段時間（視網路速度而定，可能需 10-30 分鐘）。
> 後續建置會快很多。

建置成功後，會在 `bin/` 資料夾下產生 `gameproject-0.1.0-arm64-v8a_armeabi-v7a-debug.apk` 檔案。

## 3. 實機安裝與測試

開啟 Android 手機的「開發者模式」與「USB 偵錯」，並將手機連接至電腦。
如果您使用的是 WSL2，建議將 APK 複製到 Windows 資料夾後，透過 Windows 上的 `adb` 安裝，或者在 WSL2 中設定 USB 裝置透傳。

透過 ADB 安裝指令：

```bash
adb install -r bin/gameproject-0.1.0-arm64-v8a_armeabi-v7a-debug.apk
```

安裝後即可在手機桌面上找到「GameProject」並啟動。

## 4. 常見錯誤排除

- **找不到指令 `buildozer`**：請確認 `~/.local/bin` 已經加入環境變數 `PATH` 之中。
- **編譯到一半報錯**：通常是由於 NDK 版本或系統缺少某些 C++ 開發套件。請先執行 `buildozer clean`，或者直接刪除專案下的 `.buildozer` 資料夾，再重新執行 `buildozer android debug`。
- **Android 上閃退 / 黑畫面**：
  若遇到執行時問題，可將手機連接電腦，執行以下指令並啟動遊戲，觀察錯誤日誌（過濾 python 相關訊息）：
  ```bash
  adb logcat | grep -i python
  ```

## 5. 後續：發布 Release AAB (供 Google Play 上架)

若未來需要將遊戲上架 Google Play，您需要準備 `.aab` 格式的檔案。
另外，**Google Play 自 2025 年 11 月起，要求所有 Android 15 的應用程式都必須支援 16KB 記憶體分頁 (16KB Page Size)**。
> [!NOTE]
> 本專案已配置使用 **Android NDK r28c** (預設已自動啟用 16KB 記憶體分頁對齊) 以及 **API 36 (Android 16)**，因此編譯出來的檔案已原生符合 Google Play 最新的 16KB 規範與目標 API 級別要求，您可以安心上架。

發布步驟如下：
1. 確認 `buildozer.spec` 中已包含 `android.release_artifact = aab` 設定（已預設加入）。
2. 準備一把簽章金鑰 (`.keystore`)。
3. 執行指令建立 Release 版（未簽章的 AAB）：
   ```bash
   buildozer android release
   ```
4. 編譯完成後，至 `bin/` 目錄下取得未簽章的 `.aab` 檔案。
5. 使用 `jarsigner` 對產生的 AAB 進行簽章，即可上傳至 Google Play Console！
