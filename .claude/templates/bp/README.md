# Business Plan Template Directory

This directory contains various industry-specific business plan templates for use with BP Builder.

## Available Templates

### 1. General Templates

- **`general.md`** - General business plan template, suitable for most industries

### 2. Industry-Specific Templates

#### SaaS/Technology

- **`saas-startup.md`** - SaaS startup business plan template
  - Includes MRR/ARR metrics
  - SaaS-specific financial models
  - Customer acquisition and retention strategies

#### E-commerce/Retail

- **`ecommerce.md`** - E-commerce company business plan template
  - Includes AOV and conversion rate metrics
  - Supply chain management strategies
  - Multi-channel sales strategies

#### Fintech

- **`fintech.md`** - Fintech company business plan template
  - Regulatory compliance requirements
  - Security measures and risk management
  - Banking partnership strategies

#### Healthcare

- **`healthcare.md`** - Healthcare company business plan template
  - FDA compliance and clinical validation
  - HIPAA privacy protection
  - Healthcare institution partnership strategies

#### Manufacturing

- **`manufacturing.md`** - Manufacturing company business plan template
  - Production planning and supply chain management
  - Quality control and cost management
  - R&D and innovation strategies

## Usage

### Using Templates in BP Builder

```bash
# Use specific industry template
@bp-builder --template=saas-startup "Create a business plan for our SaaS platform"

# Use general template
@bp-builder --template=general "Create a business plan for our startup"

# Auto-select template (based on industry keywords)
@bp-builder "Create a business plan for our fintech payment solution"
```

### Template Selection Logic

BP Builder will automatically select the most suitable template based on the following factors:

1. **Industry Keyword Matching**

   - SaaS, software, platform → `saas-startup.md`
   - ecommerce, retail, online store → `ecommerce.md`
   - fintech, payment, banking → `fintech.md`
   - healthcare, medical, health → `healthcare.md`
   - manufacturing, production, factory → `manufacturing.md`

2. **User Explicit Specification**

   - `--template=saas-startup`
   - `--template=ecommerce`
   - `--template=fintech`
   - `--template=healthcare`
   - `--template=manufacturing`
   - `--template=general`

3. **Default Fallback**
   - If industry or template cannot be determined, use `general.md`

## Template Structure

Each template includes the following standard sections:

1. **Executive Summary** - Company overview, product/service, market opportunity, business model, financial highlights
2. **Company Description** - Mission and vision, business model canvas
3. **Market Analysis** - Industry overview, target market, customer personas
4. **Competitive Analysis** - Direct/indirect competitors, competitive advantages, SWOT analysis
5. **Marketing and Sales Strategy** - Marketing strategy, sales strategy, pricing strategy
6. **Operations Plan** - Product/service development, operational processes, customer service
7. **Management Team** - Founding team, advisory board, hiring plan
8. **Financial Plan** - Revenue projections, cost structure, cash flow projections, funding use plan
9. **Risk Analysis** - Key risks, risk mitigation strategies
10. **Appendix** - Detailed financial models, market research data, technical specifications

## Custom Templates

To create new industry-specific templates, follow these steps:

1. Copy `general.md` as the base
2. Adjust content based on industry characteristics
3. Add industry-specific metrics and strategies
4. Update filename and description
5. Update this README.md file

## Template Maintenance

- Regularly update templates to reflect latest industry trends
- Adjust template content based on user feedback
- Ensure all templates include necessary sections and metrics
- Maintain template consistency and professionalism
