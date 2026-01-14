---
name: irb-compliance
description: IRB requirements, human subjects research compliance, and informed consent guidelines. Use when designing research involving human participants or preparing IRB submissions.
---

# IRB Compliance for Human Subjects Research

## Johns Hopkins IRB Overview

### Homewood IRB
- Oversees research at Carey Business School
- Contact: homewoodirb@jhu.edu
- Website: https://homewoodirb.jhu.edu

### When IRB Review is Required

Research involving human subjects requires IRB review when:
1. Involves living individuals
2. Researcher interacts with individuals OR obtains identifiable private information
3. Conducted by JHU faculty, staff, or students
4. Uses JHU resources or facilities

## Review Categories

### Exempt Research
May qualify for exemption if:
- Survey/interview research with adults
- No sensitive topics
- Data not identifiable or properly protected
- Educational tests, surveys, interviews, or observation

**Common exempt categories for market research:**
- Category 2: Educational tests, surveys, interviews (non-sensitive)
- Category 3: Benign behavioral interventions

### Expedited Review
- Minimal risk to participants
- Falls within specific expedited categories
- Examples: focus groups on non-sensitive topics, online surveys

### Full Board Review
- Greater than minimal risk
- Vulnerable populations
- Sensitive topics
- Deception involved

## Informed Consent Requirements

### Required Elements

1. **Study purpose and procedures**
2. **Duration of participation**
3. **Risks and discomforts**
4. **Benefits** (to participant and/or society)
5. **Alternatives** (if applicable)
6. **Confidentiality protections**
7. **Compensation** (if any)
8. **Contact information** (researcher and IRB)
9. **Voluntary nature** and right to withdraw
10. **Future use of data** (if applicable)

### Consent Form Template (Survey Research)

```markdown
# Research Study Consent

## Study Title
[Title of Research Study]

## Principal Investigator
[Name], [Title]
Carey Business School, Johns Hopkins University
[Email] | [Phone]

## Purpose
You are invited to participate in a research study about [topic]. The purpose
of this study is to [brief description of objectives].

## Procedures
If you agree to participate, you will be asked to complete an online survey
that will take approximately [X] minutes. The survey includes questions
about [general topic areas].

## Risks
This study involves minimal risk. Some questions ask about [topics] which
some people may find [mildly uncomfortable/sensitive]. You may skip any
question you do not wish to answer.

## Benefits
There are no direct benefits to you from participating. Your responses will
help [describe how results will be used].

## Compensation
[Describe any compensation or "You will not receive compensation for
participating."]

## Confidentiality
Your responses will be kept confidential. [Describe data protection measures].
Your name will not be connected to your responses. Results will only be
reported in aggregate form.

## Voluntary Participation
Your participation is voluntary. You may stop at any time without penalty.

## Questions
If you have questions about this study, contact [PI name and email].
If you have questions about your rights as a research participant, contact
the Homewood IRB at hirb@jhu.edu.

## Consent
By clicking "I agree" below, you confirm that you are 18 years or older and
agree to participate in this study.

[ ] I agree to participate
[ ] I do not agree to participate
```

### Consent for Focus Groups

Additional elements needed:
- Cannot guarantee confidentiality due to group setting
- Request that participants maintain confidentiality
- Audio/video recording consent
- Note that others will hear their responses

## Data Protection Requirements

### Identifiable Data
- Name
- Address
- Email
- Phone number
- IP address
- Unique identifiers

### Protection Measures

| Data Type | Required Protection |
|-----------|---------------------|
| Identifiable | Encrypted storage, limited access |
| De-identified | Remove direct identifiers |
| Anonymous | Never collected identifiers |

### Best Practices
- Minimize data collected
- Separate identifiers from responses
- Use secure platforms (Qualtrics, approved tools)
- Establish data retention period
- Plan for data destruction

## Special Considerations

### Vulnerable Populations
Additional protections required for:
- Children (under 18)
- Prisoners
- Pregnant women
- Cognitively impaired individuals
- Economically/educationally disadvantaged

### Sensitive Topics
May require full board review:
- Sexual behavior
- Illegal activities
- Mental health
- Substance use
- Trauma/abuse

### International Research
- May require local IRB/ethics approval
- Cultural considerations for consent
- Data transfer regulations (GDPR)

## Qualtrics Setup for IRB Compliance

### Anonymize Responses
Settings → Survey Options → Security
- [x] Anonymize responses
- [ ] Save IP address (uncheck unless required)

### Consent Question
- First question in survey
- Force response
- End survey if "Do not agree" selected

### Data Storage
- JHU-approved Qualtrics instance
- Enable encryption
- Restrict access to research team

## IRB Submission Checklist

- [ ] Protocol document
- [ ] Informed consent form(s)
- [ ] Recruitment materials
- [ ] Survey/interview instruments
- [ ] Data security plan
- [ ] CITI training certificates (all researchers)
- [ ] Conflict of interest disclosure
- [ ] Budget (if funded)

## Common IRB Issues to Avoid

1. **Starting research before approval**
2. **Not updating protocol for changes**
3. **Inadequate consent process**
4. **Poor data security**
5. **Not reporting adverse events**
6. **Collecting unnecessary identifiers**
