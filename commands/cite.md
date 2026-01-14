---
description: Format citations and create bibliography
arguments:
  - name: style
    description: Citation style (APA, Chicago, MLA, Harvard)
    required: true
allowedTools:
  - Read
  - Write
  - Glob
---

Format citations in $ARGUMENTS style.

## Instructions

1. Identify sources to cite:
   - From provided file, OR
   - From clipboard/pasted text, OR
   - From URLs provided

2. Format each citation according to $ARGUMENTS style:

   **APA 7th Edition:**
   - Author, A. A. (Year). Title of work. Publisher.
   - Author, A. A. (Year). Title of article. Journal Name, Volume(Issue), pages. DOI

   **Chicago:**
   - Author. Title. Place: Publisher, Year.
   - Author. "Article Title." Journal Name Volume, no. Issue (Year): pages.

   **MLA:**
   - Author. Title. Publisher, Year.
   - Author. "Article Title." Journal Name, vol. X, no. X, Year, pp. X-X.

3. Generate outputs:
   - In-text citation format
   - Full reference list entry
   - Bibliography sorted alphabetically

4. Check for:
   - Completeness of citation elements
   - Proper formatting and punctuation
   - Consistent style throughout

## Output
Formatted citations ready for copy/paste or saved to:
`./outputs/citations/[ProjectName]_Bibliography_[Date].md`
