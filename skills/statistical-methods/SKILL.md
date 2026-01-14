---
name: statistical-methods
description: Statistical analysis methods for survey research including descriptive statistics, hypothesis testing, and multivariate analysis. Use when analyzing quantitative data or interpreting statistical results.
---

# Statistical Methods for Survey Research

## Descriptive Statistics

### Measures of Central Tendency

| Measure | When to Use | Calculation |
|---------|-------------|-------------|
| Mean | Interval/ratio data, normal distribution | Sum / n |
| Median | Ordinal data, skewed distributions | Middle value |
| Mode | Categorical data | Most frequent value |

### Measures of Dispersion

| Measure | Description | Use Case |
|---------|-------------|----------|
| Range | Max - Min | Quick spread overview |
| Variance | Avg squared deviation from mean | Statistical calculations |
| Standard Deviation | √Variance | Interpretable spread |
| IQR | Q3 - Q1 | Robust to outliers |

### Frequency Analysis

```
Response          n      %     Cum %
Strongly Agree   45    22.5    22.5
Agree            80    40.0    62.5
Neutral          35    17.5    80.0
Disagree         25    12.5    92.5
Strongly Disagree 15    7.5   100.0
Total           200   100.0
```

## Hypothesis Testing

### General Framework

1. State null hypothesis (H₀) and alternative (H₁)
2. Set significance level (α = .05 standard)
3. Calculate test statistic
4. Determine p-value
5. Make decision (reject/fail to reject H₀)

### Significance Levels

| p-value | Significance | Notation |
|---------|--------------|----------|
| p < .001 | Highly significant | *** |
| p < .01 | Very significant | ** |
| p < .05 | Significant | * |
| p ≥ .05 | Not significant | ns |

### Common Statistical Tests

#### Comparing Means

| Test | When to Use | Example |
|------|-------------|---------|
| Independent t-test | 2 groups, continuous DV | Compare satisfaction: MBA vs. EMBA |
| Paired t-test | Same group, 2 time points | Pre/post training scores |
| One-way ANOVA | 3+ groups, continuous DV | Compare satisfaction across 4 programs |
| Two-way ANOVA | 2 IVs, continuous DV | Program × Gender on satisfaction |

#### Comparing Proportions

| Test | When to Use | Example |
|------|-------------|---------|
| Chi-square test | 2+ categorical variables | Gender × Program enrollment |
| Z-test for proportions | Compare 2 proportions | % satisfied: Year 1 vs Year 2 |

#### Relationships

| Test | When to Use | Example |
|------|-------------|---------|
| Pearson correlation | 2 continuous variables | GMAT score vs. GPA |
| Spearman correlation | Ordinal or non-normal data | Rankings correlation |
| Linear regression | Predict continuous DV | Factors predicting salary |
| Logistic regression | Predict binary DV | Factors predicting enrollment |

## Effect Size Measures

### Why Report Effect Sizes
- Statistical significance ≠ practical significance
- Sample size affects p-values
- Effect sizes show magnitude of differences

### Common Effect Size Measures

| Measure | Test | Interpretation |
|---------|------|----------------|
| Cohen's d | t-test | .2 small, .5 medium, .8 large |
| η² (eta squared) | ANOVA | .01 small, .06 medium, .14 large |
| r | Correlation | .1 small, .3 medium, .5 large |
| Cramér's V | Chi-square | .1 small, .3 medium, .5 large |
| Odds Ratio | Logistic reg | 1.5 small, 2.5 medium, 4+ large |

## Sample Size Considerations

### Minimum Sample Sizes

| Analysis | Rule of Thumb | Notes |
|----------|---------------|-------|
| Descriptive stats | n ≥ 30 | Central limit theorem |
| t-test | n ≥ 30 per group | Power considerations |
| Chi-square | Expected cell count ≥ 5 | All cells |
| Correlation | n ≥ 50 | For stable estimates |
| Regression | 10-20 cases per predictor | Minimum |
| Factor analysis | 5-10 cases per variable | Minimum |

### Small Sample Warnings
- Note when n < 30 in any cell
- Use non-parametric alternatives
- Report confidence intervals
- Interpret with caution

## Cross-Tabulation Analysis

### Banner Table Format

```
                    Total   Male    Female  MBA     EMBA
                    (n=200) (n=120) (n=80)  (n=100) (n=100)
                    %       %       %       %       %
Very Satisfied      25      28      21      30      20
Somewhat Satisfied  45      42      49      42      48
Neutral             15      15      15      13      17
Somewhat Dissatis.  10      10      10      10      10
Very Dissatisfied   5       5       5       5       5

Significance:       -       ns      -       *       -
```

### Statistical Testing in Crosstabs
- Compare each column to total or reference column
- Use z-test for column proportions
- Apply Bonferroni correction for multiple comparisons
- Note: a/b/c letter notation for significant differences

## Reporting Standards

### APA Format for Statistics

```
t-test: t(df) = value, p = value, d = value
Example: t(198) = 2.45, p = .015, d = 0.35

ANOVA: F(df1, df2) = value, p = value, η² = value
Example: F(3, 196) = 4.12, p = .007, η² = .06

Chi-square: χ²(df, N = n) = value, p = value, V = value
Example: χ²(4, N = 200) = 12.34, p = .015, V = .25

Correlation: r(df) = value, p = value
Example: r(198) = .45, p < .001

Regression: β = value, SE = value, p = value
Example: β = 0.32, SE = 0.08, p < .001
```

### Results Table Template

```markdown
| Variable | M (SD) or % | Test Statistic | p | Effect Size |
|----------|-------------|----------------|---|-------------|
| Group A  | 4.2 (0.8)   | t(198) = 2.45  | .015 | d = 0.35 |
| Group B  | 3.9 (0.9)   |                |   |             |
```

## Common Pitfalls

1. **Multiple comparisons**: Apply corrections (Bonferroni, FDR)
2. **Small cells**: Note and interpret cautiously
3. **Missing data**: Report how handled
4. **Outliers**: Check and document treatment
5. **Assumptions**: Verify normality, homogeneity
6. **Causation**: Correlation ≠ causation
