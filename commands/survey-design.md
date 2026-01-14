---
description: Design a survey instrument based on research objectives
arguments:
  - name: objectives
    description: Brief description of research objectives
    required: true
allowedTools:
  - Read
  - Write
  - Glob
  - WebSearch
---

Design a survey instrument for: $ARGUMENTS

## Instructions

1. Load the `survey-methodology` skill for question design best practices

2. Clarify research objectives:
   - What decisions will this data inform?
   - Who is the target audience?
   - How will the survey be administered (online, phone, etc.)?
   - Desired survey length (5, 10, 15, 20 minutes)?

3. Design the survey including:
   - Screener questions (if applicable)
   - Core sections aligned to objectives
   - Appropriate question types (Likert, multiple choice, etc.)
   - Skip logic specifications
   - Demographics section

4. Include:
   - Programming notes for Qualtrics
   - Estimated completion time
   - Analysis plan overview

5. Load `irb-compliance` skill and include consent language

## Output
Save to: `./outputs/surveys/[ProjectName]_Survey_[Date].md`
