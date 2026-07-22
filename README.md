<div align="center">
  <!-- 專案 Logo 預留區 -->
  <img src="assets/icon.png" alt="菜鳥調查隊日記 Logo" width="150" height="150" style="border-radius: 20px; box-shadow: 0 4px 8px rgba(0,0,0,0.2);">

  # 菜鳥調查隊日記 (Investigation Diary)

  **崑山科技大學 電腦與遊戲發展科學學士學位學程 學生畢業專題**
  > 📌 **專案來源**：本專案為崑山科技大學電腦與遊戲發展科學學士學位學程第111級(2026年畢業)學生畢業專題製作成果，Fork / 衍生自原學生團隊專案 [hPPPf7/GameProject](https://github.com/hPPPf7/GameProject)，並由指導老師鄭郁翰進行後續微調、Android 16 (API 36) 升級與 Google Play 發布維護。

  <!-- GitHub Badge 區 -->
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
  [![Python](https://img.shields.io/badge/Python-3.10+-blue.svg)](https://www.python.org/)
  [![Pygame-CE](https://img.shields.io/badge/Pygame--CE-2.5.6-orange.svg)](https://pyga.me/)
  [![Android](https://img.shields.io/badge/Android-API_36-green.svg)](https://developer.android.com/)
  [![Google Play](https://img.shields.io/badge/Google_Play-下載頁面-414141?logo=google-play&logoColor=white)](https://play.google.com/store/apps/details?id=tw.yuhan.InvestigationDiary)
  
  > **專案簡介摘要**：一款跨平台 (PC / Android) 的 2D 互動式劇情解謎 RPG。玩家將扮演初出茅廬的調查員，透過選擇、戰鬥與探索發掘異變世界的真相。

  > **核心架構亮點**：本專案設計了一套具有高度擴充性的劇情系統。整個故事內容皆採用規範化的 JSON 格式管理，因此不需修改程式碼，即可動態調整劇情內容，支援：**多結局、分支劇情、戰鬥對決、道具蒐集與劇情事件擴充**... 透過這樣的設計，未來只要編寫或修改 JSON，就能快速建立新的故事章節、任務流程與事件，大幅提升遊戲內容的擴充性與維護效率。
</div>

---

## 📖 1. 專案名稱

**菜鳥調查隊日記 (Investigation Diary)**

---

## 🎯 2. 專案介紹

### 專題背景
在資源匱乏、異變頻生的末日廢土中，人類為了生存建立起調查隊機制以探索未知領域。本專題旨在創造一個沉浸式的文字與 2D 冒險結合的世界，探討「選擇」與「命運」在極端環境下對人性的影響。玩家扮演第一次被派上外勤的新人調查員，接下淺川村整村失聯的任務，帶著錄製器與簡報資料前往現場，逐步揭開異常現象、研究據點與「樣本#07」之間的真相。遊戲以文字事件、選項決策、簡易戰鬥、背包道具與命運值變化推進。玩家的選擇會影響角色狀態、事件分支、紀錄內容與後續章節走向。

### 開發目的
將純文字冒險的自由度與 2D 動畫的視覺回饋相結合，並運用 Python (Pygame-CE) 達成跨平台（Windows 與 Android 行動裝置）的無縫遊玩體驗，展示學生在程式邏輯設計、資源管理與跨平台編譯上的綜合實力。

### 專案核心功能
- **JSON 驅動劇本引擎 (Data-Driven Story Engine)**：將程式邏輯與劇情內容完全解耦。遊戲中所有章節對話、分支選項、觸發條件與獎勵機制皆透過 JSON 彈性配置，企劃人員無須修改程式碼即可自由編修龐大的多分支劇本。
- **動態劇情文字紀錄 (Text Log)**：如同真實日記般記錄玩家所有選擇的軌跡與歷程。
- **隨機耐久度戰鬥系統**：不依賴傳統血條，而是考驗玩家資源掌控與機率風險的戰鬥決策。
- **命運與旗標系統 (Fate & Flags)**：玩家的每一個決策與獲得的道具都會無形中改變未來劇情的走向。
- **跨平台自動適應**：UI 介面針對 PC 滑鼠與手機觸控進行深度優化，分離點擊與拖曳操作。

### 使用技術簡介
本專案核心邏輯與渲染引擎採用 **Python 3.10** 搭配 **Pygame-CE** 進行開發。
行動端部署則採用 **Buildozer** 與 **Python-for-Android** 技術，透過 NDK 交叉編譯將 Python 環境封裝為 Android 原生可執行的 APK 與 16KB 分頁對齊的 AAB 檔案。

### 系統特色
不同於傳統 RPG 將對話硬編碼於程式中的缺點，本作的核心優勢在於「高度動態的內容擴充性」。透過結構化的 JSON 劇本資料庫 (`data/story_data.json`)，團隊能以零程式碼的方式快速進行劇本創作、數值平衡與分支擴充。

---

## 🎓 3. 專題資訊

本專案之遊戲程式為崑山科技大學-電腦與遊戲發展科學學士學位學程第111級學生畢業專題製作成果，本專題透過 Python 與 Pygame 進行開發。

| 項目 | 資訊 |
| :--- | :--- |
| **學校名稱** | 崑山科技大學 |
| **科系名稱** | 電腦與遊戲發展科學學士學位學程 |
| **屆別** | 第 111 級畢業專題製作成果 |
| **專題名稱** | 菜鳥調查隊日記 (Investigation Diary) |
| **指導老師** | 鄭郁翰 老師 |
| **專題組員** | 王姵璇、劉秉融、羅睿潁、蔡宇倫、李奕承 |
| **Google Play 下載** | [📲 點此前往 Google Play 應用程式頁面](https://play.google.com/store/apps/details?id=tw.yuhan.InvestigationDiary) |

---

## ⚙️ 4. 系統功能介紹

### 🎮 玩家功能
* **劇情推進與選擇**：玩家透過 UI 面板點擊分支選項，探索不同結局。
* **回合制戰鬥互動**：遇到怪物時，可選擇「攻擊」、「防禦」或「逃跑」，系統會依照機率與玩家持有的增益道具計算結果。
* **道具蒐集與使用**：在探索中取得的特殊道具將存放於物品欄，並能在關鍵時刻使用以解開隱藏劇情。
* **存檔與讀檔**：完整的 JSON 序列化存檔機制，支援自動保存玩家進度與戰鬥狀態。

### 🛠️ 系統特色功能
* **打字機特效 (Typewriter Effect)**：劇情文字逐字呈現，營造懸疑與代入感，並支援快速點擊略過。
* **觸控防抖機制**：專為 Android 平台設計的事件攔截器，嚴格防止滑動造成的誤觸，並杜絕「按下與放開」的雙重觸發 Bug。
* **動態音效管理**：根據劇情氛圍無縫切換背景音樂 (BGM) 與打擊音效 (SFX)。

---

## 🏗️ 5. 技術架構

### 技術堆疊
* **程式語言**：Python 3.10+
* **遊戲引擎**：Pygame-CE (2.5.6)
* **打包與編譯工具**：Buildozer, Python-for-Android, Android NDK r28c
* **資料儲存架構**：JSON (劇情劇本結構化儲存與玩家狀態存檔)

### 系統核心模組
* **`main.py`**：系統主程式入口、遊戲主迴圈 (Event Loop) 與渲染排程。
* **`event_manager.py`**：負責解析 JSON 劇情樹、載入節點並生成選項。
* **`battle_system.py`**：回合制戰鬥的邏輯核心，包含傷害判定、耐久度消耗計算與戰利品掉落。
* **`ui_manager.py`**：負責 2D 介面渲染，包含文字動畫、按鈕繪製、背包與設定選單顯示。
* **`save_manager.py`**：負責序列化玩家狀態 (`PlayerState`) 為 JSON 並寫入磁碟。
* **`fate_system.py`**：全域的劇情標記 (Flags) 控制器，作為後續劇情分歧的判定依據。

### 專案資料夾結構

```text
GameProject/
├─ assets/               # 遊戲靜態資源
│  ├─ images/            # 怪物、背景、角色動畫圖
│  ├─ items/             # 道具圖示
│  ├─ sounds/            # BGM 與 SFX 音效檔
│  └─ fonts/             # 繁體中文字型
├─ data/                 # 劇本資料
│  └─ story_data.json    # 定義所有劇情節點與選項的劇本檔案
├─ bin/                  # Buildozer 編譯輸出的 APK/AAB 檔案
├─ main.py               # 遊戲啟動點與主迴圈
├─ buildozer.spec        # Android 打包環境與依賴配置檔
├─ README.md             # 專案總說明文件
└─ README_ANDROID.md     # Android 平台專用建置指南
```

### 簡要程式架構說明
本遊戲採用 **資料驅動設計 (Data-Driven Design)** 與 **MVC 精神**的架構：
1. **Model**：`player_state.py` 記錄玩家血量、道具與劇情標記。
2. **View**：`ui_manager.py` 與 `text_log.py` 負責將 State 渲染至 Pygame Surface，並負責打字機動畫。
3. **Controller**：`main.py` 中的事件迴圈擷取滑鼠與觸控事件，交由 `event_result_handler.py` 分析玩家選擇後更新 Model。

### 📄 專案核心特色：JSON 彈性劇本架構 (JSON Data-Driven Architecture)

本專案最大的設計亮點在於將**遊戲邏輯引擎**與**劇情資料內容**完全解耦。所有遊戲章節、對話內文、分支選項、道具獲得、命運值 (Fate) 變化與場景背景切換，皆定義於 `data/story_data.json` 中：

#### 劇本節點設定範例 (`data/story_data.json`)：
```json
{
  "id": "荒野拾石",
  "type": "normal",
  "chapter": 1,
  "background": "bg001.png",
  "text": "你在荒野中撿到一個奇怪的石頭，它透著微弱熱度。",
  "options": [
    {
      "text": "撿起來",
      "result": {
        "text": "你撿起了石頭，手心一陣發熱。",
        "effect": { "fate": 1 },
        "inventory_add": "奇怪的石頭",
        "flags_set": ["got_weird_rock"]
      }
    }
  ]
}
```

#### JSON 設計核心優勢：
1. **零程式碼內容擴充 (Zero-Code Content Extension)**：企劃或編劇人員只需編輯 JSON 即可新增故事章節、分支與選項，完全無需修改任何 Python 程式碼。
2. **條件式分支與動態結果 (Dynamic Variants)**：支援根據玩家當前持有的道具、命運值 (Fate) 或關鍵 Flag，即時呈現不同的選項結果與動態劇情對話。
3. **模組化與極高可維護性**：遊戲核心引擎僅需專注於解析 JSON 節點與 UI 渲染，確保程式碼結構高度乾淨且極易測試維護。

---

## 💻 6. 開發環境需求

### 🪟 Windows (一般開發與遊玩)
* **作業系統**：Windows 10 / 11 (64-bit)
* **直譯器**：Python 3.10 或更新版本
* **必備套件**：`pygame-ce`
* **版本控制**：Git

### 📱 Android (APK / AAB 編譯環境)
若需自行從原始碼編譯手機版本，強烈建議使用 WSL2：
* **作業系統**：WSL2 (Ubuntu 22.04 LTS)
* **打包工具**：Buildozer
* **Android 需求**：
  * Android SDK (Target API 36 - Android 16)
  * Android NDK r28c (支援 16KB 記憶體分頁對齊規範)
* **執行設備**：Android 7.0 (API 24) 以上之行動裝置

---

## 🚀 7. 建置與執行教學

### 🪟 Windows 建置與執行流程

1. **Clone 專案**
   ```bash
   git clone https://github.com/kaoshou/InvestigationDiary.git
   cd InvestigationDiary
   ```

2. **安裝依賴套件 (Pygame-CE)**
   ```bash
   # 建議使用虛擬環境
   python -m venv .venv
   .venv\Scripts\activate
   
   # 安裝遊戲引擎
   pip install pygame-ce
   ```

3. **啟動遊戲**
   ```bash
   python main.py
   ```

### 📱 Android 編譯流程 (WSL2 / Ubuntu)

請確保已在 WSL 環境中安裝 JDK 17、Cython 與相關 C++ 編譯依賴 (詳見 `README_ANDROID.md`)。

1. **初始化與建置 Debug APK (供本機測試)**
   ```bash
   buildozer android debug
   ```
   編譯完成後，產出的 `.apk` 將位於 `bin/` 目錄，可直接傳至手機安裝。

2. **建置 Release AAB (供 Google Play 上架)**
   ```bash
   buildozer android release
   ```
   本專案已預設配置 NDK r28c，產出的 `.aab` 原生符合 Google Play 最新要求的 16KB 記憶體分頁規範。取得後只需使用 `jarsigner` 簽名即可上架。

---

## 🎮 8. 使用方式

### 如何啟動系統
在 Windows 上，於終端機執行 `python main.py` 後，遊戲視窗將會自動開啟。
在手機上，安裝 APK 後於桌面上點擊「菜鳥調查隊日誌」App 圖示即可遊玩。

### 遊戲操作方式
* **劇情選擇**：使用滑鼠左鍵（或手指點擊）畫面右下角的選項按鈕。
* **道具使用**：點擊右上角的「背包」圖示開啟物品欄，點選指定道具即可使用（例如：回復藥水）。
* **系統選單**：點擊右上角的齒輪圖示，可調整文字顯示速度、動畫開關、音量大小，或離開遊戲。
* **略過文字**：在文字打字機播放期間，點擊畫面任意空白處可快速顯示完整文字。

