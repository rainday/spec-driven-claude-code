# Spec-Driven Claude Code

A powerful code agent built on Kiro spec-driven development principles, designed to streamline software development workflows through intelligent automation and systematic task management.

## 🌟 Features

### Core Components

- **PRD Writer**: Automated Product Requirements Document generation
- **Rules Architect**: Project core definition and governance
- **Strategic Planner**: Project planning and roadmap development
- **Task Executor**: Distributed task breakdown and execution
- **Bug Fixer**: Intelligent bug detection and resolution
- **Code Reviewer**: Pre-deployment code quality assurance

### Workflow

1. **Documentation Phase**: Use PRD Writer to generate comprehensive project documentation
2. **Planning Phase**: Define project core rules and establish governance framework
3. **Strategy Phase**: Develop project roadmap and strategic planning
4. **Execution Phase**: Break down tasks into distributed, manageable components
5. **Quality Assurance**: Implement code review and bug fixing processes
6. **Deployment**: Ensure code quality before final deployment

## 🤖 Agent Details

### 📝 PRD Writer Agent

**Purpose**: Expert Product Requirements Document generator and product management specialist

**Key Capabilities**:

- Transforms ideas into comprehensive, actionable product specifications
- Creates user stories, acceptance criteria, and technical requirements
- Generates implementation roadmaps and business analysis
- Follows industry best practices and agile methodologies

**Usage Examples**:

```bash
# Basic PRD generation
@prd-writer "I need a PRD for a mobile app that helps users track their fitness goals"

# Advanced PRD with business context
@prd-writer --template=saas "Create a comprehensive PRD for a B2B project management platform"

# PRD with existing business documents
@prd-writer --business-context="./docs/business-plan.pdf" "Create a PRD for our fitness app based on our business plan"
```

**What It Does**:

- Strategic analysis and market research
- Requirements engineering and acceptance criteria
- Technical planning and architecture recommendations
- Project management and resource planning
- Stakeholder communication and executive summaries

### 🏗️ Rules Architect Agent

**Purpose**: Expert project analyst and documentation architect specializing in codebase analysis

**Key Capabilities**:

- Analyzes existing projects to extract technical architecture
- Creates comprehensive project governance files (rules/)
- Establishes product vision, organizational structure, and design systems
- Provides standardized governance documentation for AI agents and teams

**Usage Examples**:

```bash
# Analyze existing project and create governance
@rules-architect "Analyze this project and create comprehensive governance documentation"

# Update governance based on new changes
@rules-architect --update=tech "Update technical governance after adding new framework"

# Validate governance against current codebase
@rules-architect --validate "Check if governance files align with current project state"
```

**What It Creates**:

- `rules/product.md` - Product vision and feature guidelines
- `rules/tech.md` - Technology stack and technical standards
- `rules/structure.md` - Project organization and file structure
- `rules/style-guide.md` - UI/UX design system and standards
- `rules/development.md` - Development workflows and processes

### 📊 Strategic Planner Agent

**Purpose**: Expert project strategist and roadmap developer

**Key Capabilities**:

- Develops comprehensive project roadmaps and strategic plans
- Analyzes project scope and creates implementation strategies
- Identifies dependencies, risks, and resource requirements
- Creates milestone-based planning and timeline management

**Usage Examples**:

```bash
# Create strategic plan for new project
@strategic-planner "Create a strategic plan for our e-commerce platform development"

# Develop roadmap with specific constraints
@strategic-planner --timeline=6months --budget=100k "Plan our mobile app development"

# Update strategy based on new requirements
@strategic-planner --update "Update our strategy to include new AI features"
```

**What It Delivers**:

- Project roadmap with phases and milestones
- Resource allocation and timeline planning
- Risk assessment and mitigation strategies
- Success metrics and KPIs definition
- Stakeholder communication plans

### ⚡ Task Executor Agent

**Purpose**: Distributed task management and execution specialist

**Key Capabilities**:

- Breaks down complex projects into manageable tasks
- Creates detailed task specifications and acceptance criteria
- Manages task dependencies and execution order
- Provides progress tracking and milestone monitoring

**Usage Examples**:

```bash
# Break down project into tasks
@task-executor "Break down our mobile app development into executable tasks"

# Execute specific task with detailed steps
@task-executor --task="user-authentication" "Create detailed implementation steps for user authentication"

# Monitor project progress
@task-executor --status "Show current project progress and next steps"
```

**What It Manages**:

- Task decomposition and prioritization
- Implementation steps and technical specifications
- Dependency management and critical path analysis
- Progress tracking and milestone achievement
- Resource allocation and timeline management

## 🚀 Getting Started

### Prerequisites

- Claude Code installed
- Claude API access
- Project specification requirements

### Installation

1. **Download or Copy Files**

   ```bash
   # Copy the agent files to your .claude/agents directory
   cp -r spec-driven-claude-code/ ~/.claude/agents/
   ```

2. **Restart Claude Code**

   - Close Claude Code completely
   - Restart the application

3. **Access the Agent**

   - Open Claude Code
   - The Spec-Driven Claude Code agent will be available in your agent list

### Usage

Once the agent is loaded, you can:

1. **Initialize Project**

   - Mention the agent and start with project initialization

2. **Generate PRD**

   - Ask the agent to help create Product Requirements Documents

3. **Define Rules**

   - Use the agent to establish project rules and governance

4. **Plan Strategy**

   - Develop comprehensive project roadmaps and strategic plans

5. **Execute Tasks**

   - Break down and execute distributed tasks

6. **Review Code**

   - Perform code reviews before deployment

7. **Fix Bugs**

   - Use the bug fixer when encountering issues

## 🔄 Agent Workflow Integration

### Complete Project Lifecycle

```bash
# 1. Start with PRD Writer
@prd-writer "Create a PRD for our new SaaS platform"

# 2. Establish governance with Rules Architect
@rules-architect "Create governance documentation for our SaaS project"

# 3. Develop strategy with Strategic Planner
@strategic-planner "Create a 12-month roadmap for our SaaS platform"

# 4. Execute tasks with Task Executor
@task-executor "Break down our SaaS platform into executable development tasks"

# 5. Monitor and adjust throughout development
@task-executor --status "Show current progress and next priorities"
```

### Agent Collaboration Examples

**New Project Setup**:

```bash
# Comprehensive project initialization
@prd-writer "Create PRD for fitness tracking app"
@rules-architect "Analyze requirements and create governance"
@strategic-planner "Develop 6-month development roadmap"
@task-executor "Break down into sprint-ready tasks"
```

**Feature Development**:

```bash
# Feature-specific workflow
@prd-writer "Create PRD for user authentication feature"
@rules-architect --update=tech "Update technical governance for auth"
@strategic-planner "Plan auth feature implementation timeline"
@task-executor "Create detailed auth implementation tasks"
```

**Project Maintenance**:

```bash
# Ongoing project management
@rules-architect --validate "Check governance alignment"
@strategic-planner --update "Update roadmap based on progress"
@task-executor --status "Review current task status"
```

## 📁 Project Structure

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

## 🔧 Configuration

### Environment Variables

```env
CLAUDE_API_KEY=your_api_key_here
PROJECT_NAME=your_project_name
ENVIRONMENT=development
```

### Rules Configuration

```json
{
  "project_rules": {
    "code_standards": "strict",
    "review_required": true,
    "auto_fix": true
  }
}
```

## 📚 Documentation

- [API Reference](./docs/api.md)
- [Configuration Guide](./docs/configuration.md)
- [Workflow Examples](./docs/examples.md)
- [Troubleshooting](./docs/troubleshooting.md)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🌍 Internationalization

This README is available in multiple languages:

- [English](README.md) (Current)
- [繁體中文](README.zh-TW.md)
- [简体中文](README.zh-CN.md)
- [日本語](README.ja.md)

## 🆘 Support

If you encounter any issues or have questions:

- Create an issue in the GitHub repository
- Check the [troubleshooting guide](./docs/troubleshooting.md)
- Review the [FAQ](./docs/faq.md)

## 🔄 Version History

- **v1.0.0**: Initial release with core functionality
- **v1.1.0**: Added bug fixer and code reviewer
- **v1.2.0**: Enhanced distributed task management

---

**Built with ❤️ using Claude AI and Kiro spec-driven development principles**
