[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.md)
[![zh-TW](https://img.shields.io/badge/lang-zh--TW-green.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.zh-TW.md)
[![zh-CN](https://img.shields.io/badge/lang-zh--CN-yellow.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.zh-CN.md)
[![ja](https://img.shields.io/badge/lang-ja-blue.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.ja.md)

# Spec-Driven Claude Code

基於 Kiro Spec-Driven 開發原則建構的強大程式碼代理，旨在透過智慧自動化和系統化任務管理來簡化軟體開發工作流程。

## 🌟 功能特色

### 核心組件

- **PRD 撰寫器**: 自動化產品需求文件生成
- **規則架構師**: 專案核心定義和治理
- **策略規劃師**: 專案規劃和路線圖開發
- **任務執行器**: 分散式任務分解和執行
- **錯誤修復器**: 智慧錯誤檢測和解決
- **程式碼審查器**: 部署前程式碼品質保證

### 工作流程

1. **文件階段**: 使用 PRD 撰寫器生成完整的專案文件
2. **規劃階段**: 定義專案核心規則並建立治理框架
3. **策略階段**: 開發專案路線圖和策略規劃
4. **執行階段**: 將任務分解為分散式、可管理的組件
5. **品質保證**: 實施程式碼審查和錯誤修復流程
6. **部署**: 在最終部署前確保程式碼品質

## 🤖 代理詳細資訊

### 📝 PRD 撰寫器代理

**目的**: 專業產品需求文件生成器和產品管理專家

**核心能力**:

- 將想法轉化為全面、可執行的產品規格
- 創建用戶故事、驗收標準和技術需求
- 生成實施路線圖和業務分析
- 遵循產業最佳實踐和敏捷方法論

**使用範例**:

```bash
# 基本 PRD 生成
@prd-writer "我需要一個幫助用戶追蹤健身目標的移動應用程式 PRD"

# 進階 PRD 與業務背景
@prd-writer --template=saas "為 B2B 專案管理平台創建全面的 PRD"

# 基於現有業務文件的 PRD
@prd-writer --business-context="./docs/business-plan.pdf" "基於我們的業務計劃為健身應用程式創建 PRD"
```

**功能範圍**:

- 策略分析和市場研究
- 需求工程和驗收標準
- 技術規劃和架構建議
- 專案管理和資源規劃
- 利益相關者溝通和執行摘要

### 🏗️ 規則架構師代理

**目的**: 專業專案分析師和文件架構師，專精於程式碼庫分析

**核心能力**:

- 分析現有專案以提取技術架構
- 創建全面的專案治理文件 (.claude/rules/)
- 建立產品願景、組織結構和設計系統
- 為 AI 代理和團隊提供標準化治理文件

**使用範例**:

```bash
# 分析現有專案並創建治理
@rules-architect "分析此專案並創建全面的治理文件"

# 基於新變更更新治理
@rules-architect --update=tech "添加新框架後更新技術治理"

# 驗證治理與當前程式碼庫的一致性
@rules-architect --validate "檢查治理文件是否與當前專案狀態一致"
```

**創建內容**:

- `.claude/rules/product.md` - 產品願景和功能指南
- `.claude/rules/tech.md` - 技術堆疊和技術標準
- `.claude/rules/structure.md` - 專案組織和文件結構
- `.claude/rules/style-guide.md` - UI/UX 設計系統和標準
- `.claude/rules/development.md` - 開發工作流程和流程

### 📊 策略規劃師代理

**目的**: 專業專案策略師和路線圖開發者

**核心能力**:

- 開發全面的專案路線圖和策略計劃
- 分析專案範圍並創建實施策略
- 識別依賴關係、風險和資源需求
- 創建基於里程碑的規劃和時間線管理

**使用範例**:

```bash
# 為新專案創建策略計劃
@strategic-planner "為我們的電子商務平台開發創建策略計劃"

# 開發具有特定約束的路線圖
@strategic-planner --timeline=6months --budget=100k "規劃我們的移動應用程式開發"

# 基於新需求更新策略
@strategic-planner --update "更新我們的策略以包含新的 AI 功能"
```

**交付內容**:

- 具有階段和里程碑的專案路線圖
- 資源分配和時間線規劃
- 風險評估和緩解策略
- 成功指標和 KPI 定義
- 利益相關者溝通計劃

### ⚡ 任務執行器代理

**目的**: 分散式任務管理和執行專家

**核心能力**:

- 將複雜專案分解為可管理的任務
- 創建詳細的任務規格和驗收標準
- 管理任務依賴關係和執行順序
- 提供進度追蹤和里程碑監控

**使用範例**:

```bash
# 將專案分解為任務
@task-executor "將我們的移動應用程式開發分解為可執行的任務"

# 執行特定任務的詳細步驟
@task-executor --task="user-authentication" "為用戶認證創建詳細的實施步驟"

# 監控專案進度
@task-executor --status "顯示當前專案進度和下一步"
```

**管理內容**:

- 任務分解和優先級排序
- 實施步驟和技術規格
- 依賴關係管理和關鍵路徑分析
- 進度追蹤和里程碑達成
- 資源分配和時間線管理

## 🚀 開始使用

### 前置需求

- 已安裝 Claude Code
- Claude API 存取權限
- 專案規格需求

### 安裝

1. **下載或複製檔案**

   ```bash
   # 將代理檔案複製到您的 .claude/agents 目錄
   cp -r spec-driven-claude-code/ ~/.claude/agents/
   ```

2. **重新啟動 Claude Code**

   - 完全關閉 Claude Code
   - 重新啟動應用程式

3. **存取代理**

   - 開啟 Claude Code
   - 規格驅動 Claude 程式碼代理將在您的代理清單中可用

### 使用方式

代理載入後，您可以：

1. **初始化專案**

   - 提及代理並開始專案初始化

2. **生成 PRD**

   - 要求代理協助建立產品需求文件

3. **定義規則**

   - 使用代理建立專案規則和治理

4. **規劃策略**

   - 開發全面的專案路線圖和策略計劃

5. **執行任務**

   - 分解並執行分散式任務

6. **審查程式碼**

   - 在部署前執行程式碼審查

7. **修復錯誤**

   - 遇到問題時使用錯誤修復器

## 🔄 代理工作流程整合

### 完整專案生命週期

```bash
# 1. 從 PRD 撰寫器開始
@prd-writer "為我們的新 SaaS 平台創建 PRD"

# 2. 使用規則架構師建立治理
@rules-architect "為我們的 SaaS 專案創建治理文件"

# 3. 使用策略規劃師開發策略
@strategic-planner "為我們的 SaaS 平台創建 12 個月路線圖"

# 4. 使用任務執行器執行任務
@task-executor "將我們的 SaaS 平台分解為可執行的開發任務"

# 5. 在整個開發過程中監控和調整
@task-executor --status "顯示當前進度和下一個優先事項"
```

### 代理協作範例

**新專案設置**:

```bash
# 全面的專案初始化
@prd-writer "為健身追蹤應用程式創建 PRD"
@rules-architect "分析需求並創建治理"
@strategic-planner "開發 6 個月開發路線圖"
@task-executor "分解為衝刺就緒任務"
```

**功能開發**:

```bash
# 功能特定工作流程
@prd-writer "為用戶認證功能創建 PRD"
@rules-architect --update=tech "更新認證的技術治理"
@strategic-planner "規劃認證功能實施時間線"
@task-executor "創建詳細的認證實施任務"
```

**專案維護**:

```bash
# 持續的專案管理
@rules-architect --validate "檢查治理一致性"
@strategic-planner --update "基於進度更新路線圖"
@task-executor --status "審查當前任務狀態"
```

## 📁 專案結構

```
claude-code-agent/
├── src/
│   ├── prd-writer/
│   ├── rules-engine/
│   ├── strategic-planner/
│   ├── task-manager/
│   ├── bug-fixer/
│   └── code-reviewer/
├── .claude/rules/
│   ├── product.md
│   ├── tech.md
│   ├── structure.md
│   ├── style-guide.md
│   └── development.md
├── docs/
├── tests/
└── config/
```

## 🔧 設定

### 環境變數

```env
CLAUDE_API_KEY=your_api_key_here
PROJECT_NAME=your_project_name
ENVIRONMENT=development
```

### 規則設定

```json
{
  "project_rules": {
    "code_standards": "strict",
    "review_required": true,
    "auto_fix": true
  }
}
```

## 📚 文件

- [API 參考](./docs/api.md)
- [設定指南](./docs/configuration.md)
- [工作流程範例](./docs/examples.md)
- [故障排除](./docs/troubleshooting.md)

## 🤝 貢獻

1. Fork 儲存庫
2. 建立功能分支 (`git checkout -b feature/amazing-feature`)
3. 提交您的變更 (`git commit -m 'Add amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 開啟 Pull Request

## 📄 授權

本專案採用 MIT 授權條款 - 詳見 [LICENSE](LICENSE) 檔案。

## 🌍 國際化

本 README 提供多種語言版本：

- [English](README.md)
- [繁體中文](README.zh-TW.md) (目前)
- [简体中文](README.zh-CN.md)
- [日本語](README.ja.md)

## 🆘 支援

如果您遇到任何問題或有疑問：

- 在 GitHub 儲存庫中建立 issue
- 查看 [故障排除指南](./docs/troubleshooting.md)
- 檢閱 [常見問題](./docs/faq.md)

## 🔄 版本歷史

- **v1.0.0**: 核心功能初始版本
- **v1.1.0**: 新增錯誤修復器和程式碼審查器
- **v1.2.0**: 增強分散式任務管理

---

**使用 ❤️ 建構，採用 Claude AI 和 Kiro 規格驅動開發原則**
