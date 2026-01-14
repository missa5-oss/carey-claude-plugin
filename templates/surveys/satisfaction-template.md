# Satisfaction Survey Template

## Survey Metadata
- **Template Name**: General Satisfaction Survey
- **Estimated Length**: 10-12 minutes
- **Target Audience**: Students, Alumni, Stakeholders

---

## Section 1: Consent and Screening

### Q1. Consent
*[Display consent language from IRB template]*

By clicking "I agree" below, you confirm that you are 18 years or older and agree to participate in this study.
- [ ] I agree to participate
- [ ] I do not agree to participate → End survey

### Q2. Screener (if applicable)
Are you currently enrolled in or a graduate of a Carey Business School program?
- ( ) Yes, currently enrolled
- ( ) Yes, graduated
- ( ) No → End survey

---

## Section 2: Overall Satisfaction

### Q3. Overall Satisfaction
Overall, how satisfied are you with your experience at Carey Business School?
- ( ) Very satisfied
- ( ) Somewhat satisfied
- ( ) Neither satisfied nor dissatisfied
- ( ) Somewhat dissatisfied
- ( ) Very dissatisfied

### Q4. Net Promoter Score
How likely are you to recommend Carey Business School to a friend or colleague?

0 (Not at all likely) -------- 10 (Extremely likely)

---

## Section 3: Attribute Ratings

### Q5. Satisfaction Matrix
How satisfied are you with each of the following aspects of Carey Business School?

|                          | Very Dissatisfied | Somewhat Dissatisfied | Neutral | Somewhat Satisfied | Very Satisfied | N/A |
|--------------------------|-------------------|----------------------|---------|-------------------|----------------|-----|
| Quality of instruction   | ( ) | ( ) | ( ) | ( ) | ( ) | ( ) |
| Course content relevance | ( ) | ( ) | ( ) | ( ) | ( ) | ( ) |
| Career services          | ( ) | ( ) | ( ) | ( ) | ( ) | ( ) |
| Networking opportunities | ( ) | ( ) | ( ) | ( ) | ( ) | ( ) |
| Faculty accessibility    | ( ) | ( ) | ( ) | ( ) | ( ) | ( ) |
| Student services         | ( ) | ( ) | ( ) | ( ) | ( ) | ( ) |
| Facilities               | ( ) | ( ) | ( ) | ( ) | ( ) | ( ) |
| Technology resources     | ( ) | ( ) | ( ) | ( ) | ( ) | ( ) |

---

## Section 4: Improvement Areas

### Q6. Priority Improvements
Which areas should Carey prioritize for improvement? (Select up to 3)
- [ ] Course offerings
- [ ] Career services
- [ ] Networking events
- [ ] Technology/online experience
- [ ] Student support services
- [ ] Facilities
- [ ] Alumni engagement
- [ ] Other: ___________

### Q7. Open-Ended Feedback
What suggestions do you have for improving the Carey experience?

[Open text box]

---

## Section 5: Demographics

### Q8. Program
Which program are you enrolled in or graduated from?
- ( ) Full-time MBA
- ( ) Flexible MBA
- ( ) Executive MBA
- ( ) MS in Finance
- ( ) MS in Marketing
- ( ) MS in Business Analytics
- ( ) MS in Health Care Management
- ( ) Other: ___________

### Q9. Year
What year did you start your program?
- ( ) 2024
- ( ) 2023
- ( ) 2022
- ( ) 2021
- ( ) Before 2021

### Q10. Location
At which campus do/did you primarily attend classes?
- ( ) Harbor East (Baltimore)
- ( ) Washington, DC
- ( ) Online
- ( ) Multiple locations

---

## End of Survey

Thank you for your feedback. Your responses will help us improve the Carey experience.

---

## Programming Notes

### Skip Logic
- Q1 = "Do not agree" → End survey
- Q2 = "No" → End survey (if screener used)

### Randomization
- Q5 attributes should be randomized
- Q6 options should be randomized

### Validation
- Q6 max selections = 3
- Q7 optional

### Data Export
- Include response ID, timestamp, duration
- Calculate NPS score in export
