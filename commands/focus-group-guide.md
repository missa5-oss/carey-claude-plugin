---
description: Create a focus group moderation guide
arguments:
  - name: topic
    description: Topic or theme for the focus group discussion
    required: true
allowedTools:
  - Read
  - Write
  - Glob
---

Create a focus group moderation guide for: $ARGUMENTS

## Instructions

1. Load the `qualitative-methods` skill for focus group best practices

2. Clarify details:
   - Research objectives
   - Target participants
   - Session length (60, 90, or 120 minutes)
   - Number of planned groups
   - Any stimulus materials to test

3. Create a moderation guide including:
   - Introduction and ground rules (10 min)
   - Warm-up questions (10 min)
   - Core discussion sections with main questions and probes
   - Activities or stimulus exercises (if applicable)
   - Wrap-up and closing (10 min)

4. Include:
   - Timing for each section
   - Probing questions
   - Moderator notes
   - Materials/stimulus list

5. Add screener questionnaire for recruitment

## Output
Save to: `./outputs/qualitative/[ProjectName]_FocusGroup_Guide_[Date].md`
