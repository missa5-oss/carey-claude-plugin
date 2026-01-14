---
description: Conduct an industry landscape analysis
arguments:
  - name: sector
    description: Industry sector to analyze
    required: true
allowedTools:
  - Read
  - Write
  - WebSearch
  - WebFetch
  - Glob
---

Conduct an industry landscape analysis for: $ARGUMENTS

## Instructions

1. Load the `industry-analysis` skill for frameworks

2. Research and analyze:
   - Industry overview and size
   - Key players and market shares
   - Growth trends and projections
   - Porter's Five Forces analysis
   - PESTEL factors affecting the industry
   - Technology and disruption trends

3. Identify implications for:
   - Business education demand
   - Curriculum relevance
   - Employer relationships
   - Student career interests

4. Structure the report:
   - Executive summary
   - Industry overview
   - Competitive landscape
   - Trends and forces
   - Implications for Carey
   - Data sources and methodology

5. Apply Carey brand formatting

## Output
Save to: `./outputs/industry/[Sector]_Industry_Analysis_[Date].md`
