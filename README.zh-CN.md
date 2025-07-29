[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.md)
[![zh-TW](https://img.shields.io/badge/lang-zh--TW-green.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.zh-TW.md)
[![zh-CN](https://img.shields.io/badge/lang-zh--CN-yellow.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.zh-CN.md)
[![ja](https://img.shields.io/badge/lang-ja-blue.svg)](https://github.com/rainday/spec-driven-claude-code/blob/main/README.ja.md)

# Spec-Driven Claude Code

基于 Kiro Spec-Driven 开发原则构建的强大代码代理，旨在通过智能自动化和系统化任务管理来简化软件开发工作流程。

## 🌟 功能特色

### 核心组件

- **PRD 撰写器**: 自动化产品需求文档生成
- **规则架构师**: 项目核心定义和治理
- **策略规划师**: 项目规划和路线图开发
- **任务执行器**: 分布式任务分解和执行
- **错误修复器**: 智能错误检测和解决
- **代码审查器**: 部署前代码质量保证

### 工作流程

1. **文档阶段**: 使用 PRD 撰写器生成完整的项目文档
2. **规划阶段**: 定义项目核心规则并建立治理框架
3. **策略阶段**: 开发项目路线图和策略规划
4. **执行阶段**: 将任务分解为分布式、可管理的组件
5. **质量保证**: 实施代码审查和错误修复流程
6. **部署**: 在最终部署前确保代码质量

## 🤖 代理详细信息

### 📝 PRD 撰写器代理

**目的**: 专业产品需求文档生成器和产品管理专家

**核心能力**:

- 将想法转化为全面、可执行的产品规格
- 创建用户故事、验收标准和技术需求
- 生成实施路线图和业务分析
- 遵循行业最佳实践和敏捷方法论

**使用示例**:

```bash
# 基本 PRD 生成
@prd-writer "我需要一个帮助用户追踪健身目标的移动应用程序 PRD"

# 高级 PRD 与业务背景
@prd-writer --template=saas "为 B2B 项目管理平台创建全面的 PRD"

# 基于现有业务文档的 PRD
@prd-writer --business-context="./docs/business-plan.pdf" "基于我们的业务计划为健身应用程序创建 PRD"
```

**功能范围**:

- 策略分析和市场研究
- 需求工程和验收标准
- 技术规划和架构建议
- 项目管理和资源规划
- 利益相关者沟通和执行摘要

### 🏗️ 规则架构师代理

**目的**: 专业项目分析师和文档架构师，专精于代码库分析

**核心能力**:

- 分析现有项目以提取技术架构
- 创建全面的项目治理文档 (rules/)
- 建立产品愿景、组织结构和设计系统
- 为 AI 代理和团队提供标准化治理文档

**使用示例**:

```bash
# 分析现有项目并创建治理
@rules-architect "分析此项目并创建全面的治理文档"

# 基于新变更更新治理
@rules-architect --update=tech "添加新框架后更新技术治理"

# 验证治理与当前代码库的一致性
@rules-architect --validate "检查治理文档是否与当前项目状态一致"
```

**创建内容**:

- `rules/product.md` - 产品愿景和功能指南
- `rules/tech.md` - 技术堆栈和技术标准
- `rules/structure.md` - 项目组织和文件结构
- `rules/style-guide.md` - UI/UX 设计系统和标准
- `rules/development.md` - 开发工作流程和流程

### 📊 策略规划师代理

**目的**: 专业项目策略师和路线图开发者

**核心能力**:

- 开发全面的项目路线图和策略计划
- 分析项目范围并创建实施策略
- 识别依赖关系、风险和资源需求
- 创建基于里程碑的规划和时间线管理

**使用示例**:

```bash
# 为新项目创建策略计划
@strategic-planner "为我们的电子商务平台开发创建策略计划"

# 开发具有特定约束的路线图
@strategic-planner --timeline=6months --budget=100k "规划我们的移动应用程序开发"

# 基于新需求更新策略
@strategic-planner --update "更新我们的策略以包含新的 AI 功能"
```

**交付内容**:

- 具有阶段和里程碑的项目路线图
- 资源分配和时间线规划
- 风险评估和缓解策略
- 成功指标和 KPI 定义
- 利益相关者沟通计划

### ⚡ 任务执行器代理

**目的**: 分布式任务管理和执行专家

**核心能力**:

- 将复杂项目分解为可管理的任务
- 创建详细的任务规格和验收标准
- 管理任务依赖关系和执行顺序
- 提供进度追踪和里程碑监控

**使用示例**:

```bash
# 将项目分解为任务
@task-executor "将我们的移动应用程序开发分解为可执行的任务"

# 执行特定任务的详细步骤
@task-executor --task="user-authentication" "为用户认证创建详细的实施步骤"

# 监控项目进度
@task-executor --status "显示当前项目进度和下一步"
```

**管理内容**:

- 任务分解和优先级排序
- 实施步骤和技术规格
- 依赖关系管理和关键路径分析
- 进度追踪和里程碑达成
- 资源分配和时间线管理

## 🚀 开始使用

### 前置需求

- 已安装 Claude Code
- Claude API 访问权限
- 项目规格需求

### 安装

1. **下载或复制文件**

   ```bash
   # 将代理文件复制到您的 .claude/agents 目录
   cp -r spec-driven-claude-code/ ~/.claude/agents/
   ```

2. **重新启动 Claude Code**

   - 完全关闭 Claude Code
   - 重新启动应用程序

3. **访问代理**

   - 打开 Claude Code
   - 规格驱动 Claude 代码代理将在您的代理列表中可用

### 使用方式

代理加载后，您可以：

1. **初始化项目**

   - 提及代理并开始项目初始化

2. **生成 PRD**

   - 要求代理协助创建产品需求文档

3. **定义规则**

   - 使用代理建立项目规则和治理

4. **规划策略**

   - 开发全面的项目路线图和策略计划

5. **执行任务**

   - 分解并执行分布式任务

6. **审查代码**

   - 在部署前执行代码审查

7. **修复错误**

   - 遇到问题时使用错误修复器

## 🔄 代理工作流程集成

### 完整项目生命周期

```bash
# 1. 从 PRD 撰写器开始
@prd-writer "为我们新的 SaaS 平台创建 PRD"

# 2. 使用规则架构师建立治理
@rules-architect "为我们的 SaaS 项目创建治理文档"

# 3. 使用策略规划师开发策略
@strategic-planner "为我们的 SaaS 平台创建 12 个月路线图"

# 4. 使用任务执行器执行任务
@task-executor "将我们的 SaaS 平台分解为可执行的开发任务"

# 5. 在整个开发过程中监控和调整
@task-executor --status "显示当前进度和下一个优先事项"
```

### 代理协作示例

**新项目设置**:

```bash
# 全面的项目初始化
@prd-writer "为健身追踪应用程序创建 PRD"
@rules-architect "分析需求并创建治理"
@strategic-planner "开发 6 个月开发路线图"
@task-executor "分解为冲刺就绪任务"
```

**功能开发**:

```bash
# 功能特定工作流程
@prd-writer "为用户认证功能创建 PRD"
@rules-architect --update=tech "更新认证的技术治理"
@strategic-planner "规划认证功能实施时间线"
@task-executor "创建详细的认证实施任务"
```

**项目维护**:

```bash
# 持续的项目管理
@rules-architect --validate "检查治理一致性"
@strategic-planner --update "基于进度更新路线图"
@task-executor --status "审查当前任务状态"
```

## 📁 项目结构

```
claude-code-agent/
├── src/
│   ├── prd-writer/
│   ├── rules-engine/
│   ├── strategic-planner/
│   ├── task-manager/
│   ├── bug-fixer/
│   └── code-reviewer/
├── rules/
│   ├── product.md
│   ├── tech.md
│   ├── structure.md
│   ├── style-guide.md
│   └── development.md
├── docs/
├── tests/
└── config/
```

## 🔧 配置

### 环境变量

```env
CLAUDE_API_KEY=your_api_key_here
PROJECT_NAME=your_project_name
ENVIRONMENT=development
```

### 规则配置

```json
{
  "project_rules": {
    "code_standards": "strict",
    "review_required": true,
    "auto_fix": true
  }
}
```

## 📚 文档

- [API 参考](./docs/api.md)
- [配置指南](./docs/configuration.md)
- [工作流程示例](./docs/examples.md)
- [故障排除](./docs/troubleshooting.md)

## 🤝 贡献

1. Fork 仓库
2. 创建功能分支 (`git checkout -b feature/amazing-feature`)
3. 提交您的更改 (`git commit -m 'Add amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 开启 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件。

## 🌍 国际化

本 README 提供多种语言版本：

- [English](README.md)
- [繁體中文](README.zh-TW.md)
- [简体中文](README.zh-CN.md) (当前)
- [日本語](README.ja.md)

## 🆘 支持

如果您遇到任何问题或有疑问：

- 在 GitHub 仓库中创建 issue
- 查看 [故障排除指南](./docs/troubleshooting.md)
- 检阅 [常见问题](./docs/faq.md)

## 🔄 版本历史

- **v1.0.0**: 核心功能初始版本
- **v1.1.0**: 新增错误修复器和代码审查器
- **v1.2.0**: 增强分布式任务管理

---

**使用 ❤️ 构建，采用 Claude AI 和 Kiro 规格驱动开发原则**
