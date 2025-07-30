[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.md)
[![zh-TW](https://img.shields.io/badge/lang-zh--TW-green.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.zh-TW.md)
[![zh-CN](https://img.shields.io/badge/lang-zh--CN-yellow.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.zh-CN.md)
[![ja](https://img.shields.io/badge/lang-ja-blue.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.ja.md)

# Spec-Driven Claude Code

Kiro Spec-Driven 開発の原則に基づいて構築された強力なコードエージェントで、インテリジェントな自動化と体系的なタスク管理を通じてソフトウェア開発ワークフローを効率化することを目的としています。

## 🌟 機能

### コアコンポーネント

- **PRD ライター**: 自動化された製品要件ドキュメント生成
- **ルールアーキテクト**: プロジェクトコアの定義とガバナンス
- **戦略プランナー**: プロジェクト計画とロードマップ開発
- **タスクエグゼキュター**: 分散タスク管理と実行
- **バグ修正器**: インテリジェントなバグ検出と解決
- **コードレビュー**: デプロイ前のコード品質保証

### ワークフロー

1. **ドキュメント段階**: PRD ライターを使用して包括的なプロジェクトドキュメントを生成
2. **計画段階**: プロジェクトコアルールを定義し、ガバナンスフレームワークを確立
3. **戦略段階**: プロジェクトロードマップと戦略計画を開発
4. **実行段階**: タスクを分散型で管理可能なコンポーネントに分解
5. **品質保証**: コードレビューとバグ修正プロセスを実装
6. **デプロイ**: 最終デプロイ前にコード品質を確保

## 🤖 エージェント詳細

### 📝 PRD ライターエージェント

**目的**: 専門的な製品要件ドキュメント生成器とプロダクトマネジメント専門家

**主要機能**:

- アイデアを包括的で実行可能な製品仕様に変換
- ユーザーストーリー、受け入れ基準、技術要件の作成
- 実装ロードマップとビジネス分析の生成
- 業界のベストプラクティスとアジャイル方法論に従う

**使用例**:

```bash
# 基本的な PRD 生成
@prd-writer "ユーザーがフィットネス目標を追跡するモバイルアプリの PRD が必要です"

# ビジネスコンテキスト付きの高度な PRD
@prd-writer --template=saas "B2B プロジェクト管理プラットフォームの包括的な PRD を作成"

# 既存のビジネスドキュメントに基づく PRD
@prd-writer --business-context="./docs/business-plan.pdf" "ビジネスプランに基づいてフィットネスアプリの PRD を作成"
```

**機能範囲**:

- 戦略分析と市場調査
- 要件エンジニアリングと受け入れ基準
- 技術計画とアーキテクチャ推奨事項
- プロジェクト管理とリソース計画
- ステークホルダーコミュニケーションとエグゼクティブサマリー

### 🏗️ ルールアーキテクトエージェント

**目的**: コードベース分析に特化した専門プロジェクトアナリストとドキュメントアーキテクト

**主要機能**:

- 既存プロジェクトを分析して技術アーキテクチャを抽出
- 包括的なプロジェクトガバナンスドキュメント (.claude/rules/) を作成
- 製品ビジョン、組織構造、デザインシステムを確立
- AI エージェントとチームのための標準化されたガバナンスドキュメントを提供

**使用例**:

```bash
# 既存プロジェクトを分析してガバナンスを作成
@rules-architect "このプロジェクトを分析して包括的なガバナンスドキュメントを作成"

# 新しい変更に基づいてガバナンスを更新
@rules-architect --update=tech "新しいフレームワークを追加した後に技術ガバナンスを更新"

# 現在のコードベースに対するガバナンスの整合性を検証
@rules-architect --validate "ガバナンスファイルが現在のプロジェクト状態と一致しているかチェック"
```

**作成内容**:

- `.claude/rules/product.md` - 製品ビジョンと機能ガイドライン
- `.claude/rules/tech.md` - 技術スタックと技術標準
- `.claude/rules/structure.md` - プロジェクト組織とファイル構造
- `.claude/rules/style-guide.md` - UI/UX デザインシステムと標準
- `.claude/rules/development.md` - 開発ワークフローとプロセス

### 📊 戦略プランナーエージェント

**目的**: 専門プロジェクト戦略家とロードマップ開発者

**主要機能**:

- 包括的なプロジェクトロードマップと戦略計画を開発
- プロジェクトスコープを分析して実装戦略を作成
- 依存関係、リスク、リソース要件を特定
- マイルストーンベースの計画とタイムライン管理を作成

**使用例**:

```bash
# 新しいプロジェクトの戦略計画を作成
@strategic-planner "Eコマースプラットフォーム開発の戦略計画を作成"

# 特定の制約を持つロードマップを開発
@strategic-planner --timeline=6months --budget=100k "モバイルアプリ開発を計画"

# 新しい要件に基づいて戦略を更新
@strategic-planner --update "新しい AI 機能を含むように戦略を更新"
```

**提供内容**:

- フェーズとマイルストーンを持つプロジェクトロードマップ
- リソース割り当てとタイムライン計画
- リスク評価と軽減戦略
- 成功指標と KPI の定義
- ステークホルダーコミュニケーション計画

### ⚡ タスクエグゼキュターエージェント

**目的**: 分散タスク管理と実行専門家

**主要機能**:

- 複雑なプロジェクトを管理可能なタスクに分解
- 詳細なタスク仕様と受け入れ基準を作成
- タスク依存関係と実行順序を管理
- 進捗追跡とマイルストーン監視を提供

**使用例**:

```bash
# プロジェクトをタスクに分解
@task-executor "モバイルアプリ開発を実行可能なタスクに分解"

# 特定のタスクの詳細なステップを実行
@task-executor --task="user-authentication" "ユーザー認証の詳細な実装ステップを作成"

# プロジェクト進捗を監視
@task-executor --status "現在のプロジェクト進捗と次のステップを表示"
```

**管理内容**:

- タスク分解と優先順位付け
- 実装ステップと技術仕様
- 依存関係管理とクリティカルパス分析
- 進捗追跡とマイルストーン達成
- リソース割り当てとタイムライン管理

## 🚀 はじめに

### 前提条件

- Claude Code がインストール済み
- Claude API アクセス
- プロジェクト仕様要件

### インストール

1. **ファイルのダウンロードまたはコピー**

   ```bash
   # エージェントファイルを .claude/agents ディレクトリにコピー
   cp -r spec-driven-claude-code/ ~/.claude/agents/
   ```

2. **Claude Code の再起動**

   - Claude Code を完全に閉じる
   - アプリケーションを再起動

3. **エージェントへのアクセス**

   - Claude Code を開く
   - 仕様駆動 Claude コードエージェントがエージェントリストで利用可能になります

### 使用方法

エージェントが読み込まれたら、以下ができます：

1. **プロジェクトの初期化**

   - エージェントに言及してプロジェクト初期化を開始

2. **PRD の生成**

   - エージェントに製品要件ドキュメントの作成を依頼

3. **ルールの定義**

   - エージェントを使用してプロジェクトルールとガバナンスを確立

4. **戦略の計画**

   - 包括的なプロジェクトロードマップと戦略計画を開発

5. **タスクの実行**

   - 分散タスクを分解して実行

6. **コードのレビュー**

   - デプロイ前にコードレビューを実行

7. **バグの修正**

   - 問題が発生した場合にバグ修正器を使用

## 🔄 エージェントワークフロー統合

### 完全なプロジェクトライフサイクル

```bash
# 1. PRD ライターから開始
@prd-writer "新しい SaaS プラットフォームの PRD を作成"

# 2. ルールアーキテクトでガバナンスを確立
@rules-architect "SaaS プロジェクトのガバナンスドキュメントを作成"

# 3. 戦略プランナーで戦略を開発
@strategic-planner "SaaS プラットフォームの 12 ヶ月ロードマップを作成"

# 4. タスクエグゼキュターでタスクを実行
@task-executor "SaaS プラットフォームを実行可能な開発タスクに分解"

# 5. 開発全体を通じて監視と調整
@task-executor --status "現在の進捗と次の優先事項を表示"
```

### エージェント協力例

**新プロジェクト設定**:

```bash
# 包括的なプロジェクト初期化
@prd-writer "フィットネストラッキングアプリの PRD を作成"
@rules-architect "要件を分析してガバナンスを作成"
@strategic-planner "6 ヶ月開発ロードマップを開発"
@task-executor "スプリント準備完了タスクに分解"
```

**機能開発**:

```bash
# 機能固有のワークフロー
@prd-writer "ユーザー認証機能の PRD を作成"
@rules-architect --update=tech "認証の技術ガバナンスを更新"
@strategic-planner "認証機能実装タイムラインを計画"
@task-executor "詳細な認証実装タスクを作成"
```

**プロジェクトメンテナンス**:

```bash
# 継続的なプロジェクト管理
@rules-architect --validate "ガバナンス整合性をチェック"
@strategic-planner --update "進捗に基づいてロードマップを更新"
@task-executor --status "現在のタスク状況をレビュー"
```

## 📁 プロジェクト構造

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

### 環境変数

```env
CLAUDE_API_KEY=your_api_key_here
PROJECT_NAME=your_project_name
ENVIRONMENT=development
```

### ルール設定

```json
{
  "project_rules": {
    "code_standards": "strict",
    "review_required": true,
    "auto_fix": true
  }
}
```

## 📚 ドキュメント

- [API リファレンス](./docs/api.md)
- [設定ガイド](./docs/configuration.md)
- [ワークフロー例](./docs/examples.md)
- [トラブルシューティング](./docs/troubleshooting.md)

## 🤝 貢献

1. リポジトリをフォーク
2. 機能ブランチを作成 (`git checkout -b feature/amazing-feature`)
3. 変更をコミット (`git commit -m 'Add amazing feature'`)
4. ブランチにプッシュ (`git push origin feature/amazing-feature`)
5. プルリクエストを開く

## 📄 ライセンス

このプロジェクトは MIT ライセンスの下でライセンスされています - 詳細は [LICENSE](LICENSE) ファイルを参照してください。

## 🌍 国際化

この README は複数の言語で利用可能です：

- [English](README.md)
- [繁體中文](README.zh-TW.md)
- [简体中文](README.zh-CN.md)
- [日本語](README.ja.md) (現在)

## 🆘 サポート

問題が発生した場合や質問がある場合：

- GitHub リポジトリで issue を作成
- [トラブルシューティングガイド](./docs/troubleshooting.md) を確認
- [FAQ](./docs/faq.md) を確認

## 🔄 バージョン履歴

- **v1.0.0**: コア機能の初期リリース
- **v1.1.0**: バグ修正器とコードレビューを追加
- **v1.2.0**: 分散タスク管理を強化

---

**Claude AI と Kiro 仕様駆動開発の原則を使用して ❤️ で構築**
