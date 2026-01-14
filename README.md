# Carey Business School Market Research Plugin

A Claude Code plugin for Johns Hopkins Carey Business School Market Research operations.

## Overview

This plugin provides specialized agents, skills, and commands to support market research operations including:

- **Primary Research**: Survey design, focus groups, interview protocols
- **Secondary Research**: Competitive intelligence, industry analysis, trend monitoring
- **Data Analytics**: Statistical analysis, qualitative coding, insights generation
- **Creative Services**: Branded reports, presentations, visualizations
- **Administrative**: RFPs, proposals, project planning

## Installation

1. Clone this repository to your local machine
2. In Claude Code, run: `/plugins install ./path/to/carey_claude_plugin`
3. Configure environment variables for integrations (see Configuration below)

## Quick Start

### Common Commands

```bash
# Generate an RFP response
/rfp quantitative

# Analyze a competitor
/competitor "Wharton"

# Design a survey
/survey-design "measure student satisfaction with career services"

# Create a focus group guide
/focus-group-guide "MBA brand perception"

# Analyze survey data
/analyze-survey ./data/survey_results.csv

# Check business school rankings
/rankings
```

## Structure

```
carey_claude_plugin/
├── .claude-plugin/
│   └── plugin.json          # Plugin manifest
├── agents/                   # Specialized AI agents
│   ├── director.md          # Orchestrator agent
│   ├── admin-services.md    # RFPs, proposals, planning
│   ├── primary-research.md  # Surveys, focus groups
│   ├── secondary-research.md # Competitive intel, industry
│   ├── data-analytics.md    # Statistical analysis
│   └── creative-services.md # Design, reports, branding
├── commands/                 # Slash commands
├── skills/                   # Domain knowledge
├── hooks/                    # Automation hooks
├── scripts/                  # Helper scripts
├── templates/                # Document templates
└── config/                   # Configuration files
```

## Agents

| Agent | Purpose |
|-------|---------|
| Director | Routes requests, manages cross-functional projects |
| Admin Services | RFPs, proposals, planning, scheduling, budgets |
| Primary Research | Survey design, focus groups, interviews, IRB |
| Secondary Research | Competitive intel, industry analysis, trends |
| Data Analytics | Statistical analysis, data processing, insights |
| Creative Services | Reports, presentations, brand compliance |

## Configuration

### Environment Variables

Create a `.env` file with:

```bash
# Qualtrics Integration
QUALTRICS_API_TOKEN=your_token_here
QUALTRICS_DATACENTER=jhu

# Data Directory
CAREY_DATA_DIR=/path/to/research/data
```

### Brand Settings

Brand colors and settings are configured in `config/settings.json`.

## Skills

The plugin includes domain knowledge in these areas:

- `carey-brand` - JHU/Carey brand guidelines
- `survey-methodology` - Survey design best practices
- `qualitative-methods` - Focus groups and interviews
- `industry-analysis` - Market analysis frameworks
- `competitive-intelligence` - Business school benchmarking
- `statistical-methods` - Survey data analysis
- `rfp-generation` - Proposal writing
- `irb-compliance` - Human subjects research

## Security & Compliance

- PII scanner runs before all file writes
- Research data should never be committed to version control
- IRB approval required for human subjects research
- Follow JHU data governance policies

## Support

For questions or issues:
- Contact: Carey Business School Market Research
- IRB questions: homewoodirb@jhu.edu

## License

MIT License - Johns Hopkins Carey Business School
