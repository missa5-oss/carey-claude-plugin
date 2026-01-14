---
description: Generate an RFP response for a market research project
arguments:
  - name: project-type
    description: Type of research (quantitative, qualitative, mixed-methods)
    required: true
allowedTools:
  - Read
  - Write
  - Glob
  - WebSearch
---

Generate a comprehensive RFP response for a $ARGUMENTS market research project for Carey Business School.

## Instructions

1. First, ask clarifying questions about:
   - Client/stakeholder name
   - Research objectives
   - Target audience/population
   - Timeline constraints
   - Budget range (if known)
   - Specific deliverables required

2. Load the `rfp-generation` skill for templates and best practices

3. Load the `carey-brand` skill for formatting guidelines

4. Create an RFP response including:
   - Cover letter
   - Executive summary
   - Understanding of requirements
   - Proposed methodology
   - Project team (use placeholder names)
   - Timeline and milestones
   - Detailed budget
   - Relevant experience section

5. Export the final document as both .docx and .pdf formats

## Output
Save to: `./outputs/rfp/[ProjectName]_RFP_Response_[Date].docx`
