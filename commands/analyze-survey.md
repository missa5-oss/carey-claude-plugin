---
description: Analyze survey data and generate insights report
arguments:
  - name: file
    description: Path to the survey data file (CSV, Excel, or SPSS)
    required: true
allowedTools:
  - Read
  - Write
  - Bash
  - Glob
---

Analyze the survey data in: $ARGUMENTS

## Instructions

1. Load the `statistical-methods` skill for analysis techniques

2. Read and validate the data:
   - Check for completeness
   - Identify data types
   - Flag quality issues (speeders, straight-liners)

3. Conduct analysis:
   - Descriptive statistics for all questions
   - Cross-tabulations by key segments
   - Statistical significance testing where appropriate
   - Open-ended response coding (if applicable)

4. Generate deliverables:
   - Data tables with frequencies and means
   - Cross-tabulation banners
   - Key findings summary
   - Statistical methodology notes

5. Apply Carey formatting to all outputs

## Output
Save to: `./outputs/analysis/[ProjectName]_Analysis_[Date]/`
- `data_tables.xlsx`
- `crosstabs.xlsx`
- `findings_summary.md`
