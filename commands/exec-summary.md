---
description: Create an executive summary from research findings
arguments:
  - name: file
    description: Path to the research report or data file to summarize
    required: true
allowedTools:
  - Read
  - Write
  - Glob
---

Create an executive summary from: $ARGUMENTS

## Instructions

1. Read and analyze the provided file

2. Load the `carey-brand` skill for formatting

3. Create a 1-2 page executive summary including:
   - Research objective (1-2 sentences)
   - Methodology overview (2-3 sentences)
   - Key findings (3-5 bullet points)
   - Supporting data highlights
   - Implications and recommendations

4. Formatting requirements:
   - Use Carey brand colors for headers
   - Include 1-2 key data visualizations
   - Clear action-oriented recommendations
   - Maximum 2 pages

5. Make it presentation-ready for leadership

## Output
Save to: `./outputs/summaries/[ProjectName]_ExecSummary_[Date].md`
