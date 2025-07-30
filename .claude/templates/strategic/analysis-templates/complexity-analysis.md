# Feature Complexity Analysis Template

## Feature Information

```yaml
---
feature: [Feature Name]
analysis_date: [YYYY-MM-DD]
analyst: [Analyst Name]
complexity_score: [1-10]
estimated_effort: [Story points or hours]
risk_level: [Low/Medium/High]
---
```

## Complexity Assessment

### UI Complexity (1-10)

**Score:** [X/10]

#### Factors Considered:

- **Component Count:** [Number of UI components]
- **Interaction Complexity:** [Complexity of user interactions]
- **State Management:** [Complexity of state management]
- **Responsive Design:** [Mobile/tablet/desktop considerations]
- **Accessibility:** [Accessibility requirements]

#### Detailed Breakdown:

- **Simple UI (1-3):** Basic forms, lists, simple CRUD operations
- **Moderate UI (4-6):** Complex forms, data visualization, multi-step workflows
- **Complex UI (7-10):** Rich interactions, real-time updates, complex dashboards

### Data Complexity (1-10)

**Score:** [X/10]

#### Factors Considered:

- **Data Model Complexity:** [Number of entities and relationships]
- **Data Operations:** [CRUD complexity, business logic]
- **Data Volume:** [Expected data size and growth]
- **Data Integration:** [External system integrations]
- **Data Validation:** [Complexity of validation rules]

#### Detailed Breakdown:

- **Simple Data (1-3):** Single entity, basic CRUD, no external integrations
- **Moderate Data (4-6):** Multiple entities, relationships, some external integrations
- **Complex Data (7-10):** Complex relationships, multiple external systems, real-time sync

### Integration Complexity (1-10)

**Score:** [X/10]

#### Factors Considered:

- **External APIs:** [Number and complexity of external APIs]
- **Authentication:** [Authentication and authorization complexity]
- **Data Synchronization:** [Real-time sync requirements]
- **Error Handling:** [Complexity of error scenarios]
- **Performance Requirements:** [Response time and throughput needs]

#### Detailed Breakdown:

- **Simple Integration (1-3):** No external APIs, basic authentication
- **Moderate Integration (4-6):** 1-2 external APIs, standard authentication
- **Complex Integration (7-10):** Multiple external APIs, complex auth, real-time sync

### Business Logic Complexity (1-10)

**Score:** [X/10]

#### Factors Considered:

- **Business Rules:** [Number and complexity of business rules]
- **Workflow Complexity:** [Multi-step processes and decision trees]
- **Validation Logic:** [Complex validation requirements]
- **Calculation Logic:** [Mathematical or algorithmic complexity]
- **Compliance Requirements:** [Regulatory or compliance needs]

#### Detailed Breakdown:

- **Simple Logic (1-3):** Basic validation, simple business rules
- **Moderate Logic (4-6):** Complex validation, multiple business rules
- **Complex Logic (7-10):** Complex workflows, algorithmic calculations, compliance

### Security Complexity (1-10)

**Score:** [X/10]

#### Factors Considered:

- **Data Sensitivity:** [Sensitivity of data being handled]
- **Access Control:** [Complexity of role-based access]
- **Compliance Requirements:** [Regulatory compliance needs]
- **Audit Requirements:** [Audit trail and logging needs]
- **Threat Model:** [Security threats and mitigations]

#### Detailed Breakdown:

- **Simple Security (1-3):** Basic authentication, public data
- **Moderate Security (4-6):** Role-based access, sensitive data
- **Complex Security (7-10):** Multi-factor auth, compliance, audit trails

### Performance Complexity (1-10)

**Score:** [X/10]

#### Factors Considered:

- **Load Requirements:** [Expected user load and concurrent users]
- **Response Time:** [Required response times]
- **Scalability:** [Horizontal and vertical scaling needs]
- **Caching Strategy:** [Caching requirements]
- **Optimization Needs:** [Performance optimization requirements]

#### Detailed Breakdown:

- **Simple Performance (1-3):** Low user load, standard response times
- **Moderate Performance (4-6):** Medium user load, optimized response times
- **Complex Performance (7-10):** High user load, real-time requirements, complex caching

## Overall Complexity Score

### Weighted Calculation

```python
# Complexity weights (adjust based on project priorities)
weights = {
    'ui_complexity': 0.15,
    'data_complexity': 0.25,
    'integration_complexity': 0.20,
    'business_logic_complexity': 0.20,
    'security_complexity': 0.10,
    'performance_complexity': 0.10
}

# Calculate weighted score
overall_score = sum(score * weight for score, weight in weights.items())
```

**Overall Complexity Score:** [X/10]

### Complexity Level Classification

- **Low Complexity (1-3):** Simple features, minimal risk
- **Medium Complexity (4-6):** Moderate features, some risk
- **High Complexity (7-10):** Complex features, high risk

## Effort Estimation

### Story Point Estimation

Based on complexity score:

- **Low Complexity (1-3):** 1-3 story points
- **Medium Complexity (4-6):** 5-8 story points
- **High Complexity (7-10):** 13-21 story points

**Estimated Story Points:** [X points]

### Time Estimation

Based on team velocity and story points:

- **Development Time:** [X days/weeks]
- **Testing Time:** [X days/weeks]
- **Documentation Time:** [X days/weeks]
- **Total Time:** [X days/weeks]

## Risk Assessment

### Technical Risks

1. **Risk 1:** [Description]

   - **Probability:** [High/Medium/Low]
   - **Impact:** [High/Medium/Low]
   - **Mitigation:** [Mitigation strategy]

2. **Risk 2:** [Description]
   - **Probability:** [High/Medium/Low]
   - **Impact:** [High/Medium/Low]
   - **Mitigation:** [Mitigation strategy]

### Resource Risks

1. **Risk 1:** [Description]
   - **Probability:** [High/Medium/Low]
   - **Impact:** [High/Medium/Low]
   - **Mitigation:** [Mitigation strategy]

### Timeline Risks

1. **Risk 1:** [Description]
   - **Probability:** [High/Medium/Low]
   - **Impact:** [High/Medium/Low]
   - **Mitigation:** [Mitigation strategy]

## Dependencies Analysis

### Technical Dependencies

- **Dependency 1:** [Description and impact]
- **Dependency 2:** [Description and impact]

### Resource Dependencies

- **Dependency 1:** [Description and impact]
- **Dependency 2:** [Description and impact]

### External Dependencies

- **Dependency 1:** [Description and impact]
- **Dependency 2:** [Description and impact]

## Recommendations

### Development Approach

- **Recommended Approach:** [Waterfall/Agile/Hybrid]
- **Team Size:** [Recommended team size]
- **Skills Required:** [Required skills and expertise]

### Risk Mitigation Strategies

1. **Strategy 1:** [Description and implementation]
2. **Strategy 2:** [Description and implementation]

### Success Factors

1. **Factor 1:** [Critical success factor]
2. **Factor 2:** [Critical success factor]

## Monitoring & Control

### Key Metrics to Track

1. **Metric 1:** [Description and target]
2. **Metric 2:** [Description and target]

### Review Points

1. **Review Point 1:** [When and what to review]
2. **Review Point 2:** [When and what to review]

### Contingency Plans

1. **Plan 1:** [Contingency plan description]
2. **Plan 2:** [Contingency plan description]
