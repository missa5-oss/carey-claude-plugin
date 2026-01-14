---
description: Create branded design assets following Carey aesthetics
arguments:
  - name: asset-type
    description: Type of asset (report, presentation, chart, infographic)
    required: true
allowedTools:
  - Read
  - Write
  - Glob
  - Bash
---

Create a branded $ARGUMENTS following Carey Business School design standards.

## Instructions

1. Load the `carey-brand` skill for design specifications

2. Confirm requirements:
   - Purpose of the asset
   - Content/data to include
   - Target audience
   - Delivery format

3. Apply Carey brand standards:
   - Primary colors: Heritage Blue (#002D72), Spirit Blue (#0072CE)
   - Accent color: Orange (#CF4520) for highlights
   - Typography: Gentona for headlines, Source Sans Pro for body
   - Logo placement per brand guidelines

4. For specific asset types:

   **Reports:**
   - Cover page with Carey branding
   - Consistent header/footer
   - Professional table formatting
   - Proper citation format

   **Presentations:**
   - 16:9 aspect ratio
   - Title slide with Heritage Blue background
   - Content slides with consistent layout
   - Data visualizations following chart standards

   **Charts:**
   - Brand color sequence for data series
   - Clear labels and legends
   - Source citations
   - Accessibility considerations

   **Infographics:**
   - Visual hierarchy
   - Brand-consistent iconography
   - Data accuracy
   - Print and digital versions

5. Run brand compliance check before finalizing

## Output
Save to: `./outputs/creative/[AssetName]_[Date].[format]`
