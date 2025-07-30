# PRD Templates Directory

This directory contains templates for different types of Product Requirements Documents (PRDs).

## Available Templates

### `general.md`

Standard PRD template suitable for most projects. Includes all standard sections with general guidance.

### `saas.md`

SaaS/Software product template with emphasis on:

- Multi-tenant architecture
- Subscription models
- User roles and permissions
- API integrations
- Analytics and reporting

### `mobile.md`

Mobile application template with focus on:

- Platform-specific requirements (iOS/Android)
- Offline functionality
- Push notifications
- App store requirements
- Performance optimization

### `api.md`

API/Platform template emphasizing:

- API specifications and documentation
- Rate limiting and security
- Developer experience
- SDK and integration support
- Compliance requirements

### `enterprise.md`

Enterprise solution template with:

- Enterprise security requirements
- Compliance and governance
- Integration with existing systems
- Scalability and performance
- Change management

## Usage

Templates are automatically loaded by the PRD Writer based on the project type or can be specified manually:

```bash
@prd-writer --template=saas "Create PRD for B2B platform"
@prd-writer --template=mobile "Create PRD for fitness app"
@prd-writer --template=api "Create PRD for payment API"
```

## Template Structure

Each template follows this standard structure:

1. **Executive Summary**
2. **Market & User Analysis**
3. **Product Requirements**
4. **Technical Specifications**
5. **Implementation Plan**
6. **Success Criteria**

## Customization

Templates can be customized for specific industries or project types by adding new template files to this directory.
