---
description: Generate a competitive intelligence brief on a business school
arguments:
  - name: school
    description: Name of the competitor business school to analyze
    required: true
allowedTools:
  - Read
  - Write
  - WebSearch
  - WebFetch
  - Glob
---

Generate a competitive intelligence brief on $ARGUMENTS for Carey Business School.

## Instructions

1. Load the `competitive-intelligence` skill for frameworks and templates

2. Research the following about $ARGUMENTS:
   - Recent rankings and trends
   - Program portfolio (MBA, specialized masters, executive ed)
   - Tuition and pricing
   - Class profile statistics
   - Employment outcomes
   - Recent news and announcements
   - Marketing messaging and positioning
   - Notable faculty and research areas

3. Compare against Carey across key dimensions

4. Identify:
   - Competitive threats
   - Differentiation opportunities
   - Strategic implications

5. Format using the Competitive Brief Template from the skill

## Output
Save to: `./outputs/competitive/[SchoolName]_Competitive_Brief_[Date].md`
