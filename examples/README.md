# Examples Directory

This directory contains various scenario examples demonstrating how to use the Spec-Driven Claude Code system for different types of projects and use cases.

## 📁 Example Categories

### 🏢 Business Planning Examples

- **startup-saas-platform**: Complete SaaS startup from idea to MVP
- **ecommerce-marketplace**: B2B marketplace platform development
- **mobile-fitness-app**: Consumer mobile application with social features

### 🛠️ Technical Implementation Examples

- **user-authentication-system**: Complete authentication and authorization system
- **api-gateway-service**: Microservices API gateway implementation
- **real-time-chat-system**: WebSocket-based real-time communication
- **data-analytics-dashboard**: Business intelligence and reporting system

### 🎯 Industry-Specific Examples

- **healthcare-patient-portal**: HIPAA-compliant patient management system
- **fintech-payment-processor**: Financial technology payment processing
- **edtech-learning-platform**: Educational technology platform
- **logistics-tracking-system**: Supply chain and logistics management

### 🔧 Development Workflow Examples

- **legacy-system-migration**: Modernizing existing systems
- **microservices-transformation**: Monolith to microservices conversion
- **cloud-native-deployment**: Kubernetes and cloud-native architecture
- **ai-ml-integration**: Machine learning model integration

## 🚀 How to Use These Examples

Each example folder contains:

1. **business-plan.md** - Sarah's business plan output
2. **product-requirements.md** - David's PRD output
3. **project-rules.md** - Daniel's governance and architecture rules
4. **technical-strategy.md** - James's strategic planning output
5. **implementation-tasks.md** - Emily's task breakdown
6. **code-samples/** - Actual code implementations
7. **workflow-log.md** - Complete conversation log showing the process

## 📋 Example Usage Workflow

```bash
# 1. Start with business planning
@bp-builder --guided --example=startup-saas-platform

# 2. Generate product requirements
@prd-writer --business-plan=examples/startup-saas-platform/business-plan.md

# 3. Create project governance
@rules-architect --prd=examples/startup-saas-platform/product-requirements.md

# 4. Develop technical strategy
@strategic-planner --prd=examples/startup-saas-platform/product-requirements.md --rules=examples/startup-saas-platform/project-rules.md

# 5. Execute implementation
@task-executor --strategy=examples/startup-saas-platform/technical-strategy.md
```

## 🎯 Choose Your Example

Select an example that best matches your project type:

- **New Startup**: Use `startup-saas-platform` or `mobile-fitness-app`
- **Enterprise System**: Use `api-gateway-service` or `data-analytics-dashboard`
- **Industry-Specific**: Use healthcare, fintech, or edtech examples
- **Technical Migration**: Use `legacy-system-migration` or `microservices-transformation`

## 📚 Learning Path

1. **Beginner**: Start with `startup-saas-platform` for a complete end-to-end example
2. **Intermediate**: Try `user-authentication-system` for technical depth
3. **Advanced**: Explore `ai-ml-integration` or `cloud-native-deployment`
4. **Specialized**: Dive into industry-specific examples based on your domain

## 🔄 Customization

Each example can be customized by:

- Modifying the business context in the business plan
- Adjusting technical requirements in the PRD
- Updating architecture decisions in the project rules
- Adapting implementation strategies for your specific needs

## 📈 Best Practices

- **Start Small**: Begin with simpler examples before tackling complex scenarios
- **Iterate**: Use the feedback loops in the workflow to refine your approach
- **Document**: Keep detailed logs of your customization decisions
- **Test**: Validate your implementations against the original requirements
- **Share**: Contribute your customizations back to the community

## 🤝 Contributing

To add new examples:

1. Create a new folder with descriptive name
2. Include all required documents (business plan, PRD, rules, strategy, tasks)
3. Add code samples and implementation details
4. Document the workflow log
5. Update this README with the new example

## 📞 Support

For questions about using these examples or creating new ones, refer to the main project documentation or open an issue in the repository.
