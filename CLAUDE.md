# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains a Claude Code plugin designed for Johns Hopkins Carey Business School. The plugin is structured as a virtual market research agency with specialized agents organized hierarchically, each equipped with relevant skills to support research operations and decision-making.

## Target Users

- **Primary**: Market Research team (primary and secondary research operations)
- **Secondary**: Faculty, staff, and technical users across Carey Business School

---

## Plugin Structure (Claude Code Official Format)

```
carey_claude_plugin/
├── .claude-plugin/
│   └── plugin.json              # Required: Plugin manifest
├── agents/                       # Subagent definitions (.md files)
│   ├── director.md
│   ├── admin-services.md
│   ├── primary-research.md
│   ├── secondary-research.md
│   ├── data-analytics.md
│   └── creative-services.md
├── commands/                     # Slash commands (.md files)
│   ├── rfp.md
│   ├── competitor.md
│   ├── survey-design.md
│   └── ...
├── skills/                       # Agent skills (subdirectories with SKILL.md)
│   ├── industry-analysis/
│   │   └── SKILL.md
│   ├── carey-brand/
│   │   └── SKILL.md
│   ├── survey-methodology/
│   │   └── SKILL.md
│   └── ...
├── hooks/
│   └── hooks.json               # Event handler configuration
├── .mcp.json                     # MCP server definitions (Qualtrics, etc.)
├── scripts/                      # Helper scripts
│   ├── pii-scanner.sh
│   └── data-validation.sh
├── templates/                    # Report/survey templates
└── CLAUDE.md
```

---

## Plugin Manifest

### `.claude-plugin/plugin.json`
```json
{
  "name": "carey-market-research",
  "version": "1.0.0",
  "description": "Market research agency plugin for Johns Hopkins Carey Business School",
  "author": {
    "name": "Carey Business School Market Research"
  },
  "keywords": ["market-research", "business-school", "surveys", "competitive-intelligence"]
}
```

---

## Agent Format

Agents are defined in Markdown files with YAML frontmatter in the `agents/` directory.

### Example: `agents/admin-services.md`
```markdown
---
name: admin-services
description: Business operations agent for RFPs, proposals, project planning, scheduling, and budget estimation. Use for administrative tasks, client documentation, and project management.
model: sonnet
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
  - WebSearch
  - WebFetch
---

# Admin Services Agent

You are the Admin Services agent for Carey Business School Market Research. You handle business operations, client services, documentation, and project administration.

## Core Responsibilities
- Generate RFP responses with scope, methodology, timeline, budget
- Write research proposals and statements of work
- Create detailed project plans with milestones and deliverables
- Generate schedules and timeline estimates
- Estimate project costs and resource requirements
- Prepare meeting agendas and briefing documents

## Output Standards
- All documents must follow JHU/Carey branding guidelines
- Use professional business language appropriate for academic institution
- Include clear deliverables and success metrics
- Reference relevant past Carey research when applicable
```

### Agent Frontmatter Fields
| Field | Required | Description |
|-------|----------|-------------|
| `name` | Yes | Kebab-case identifier |
| `description` | Yes | When to use this agent (shown to Claude for routing) |
| `model` | No | `sonnet`, `opus`, or `haiku` (default: inherit) |
| `allowedTools` | No | Array of permitted tools |
| `hooks` | No | Agent-specific hooks |

---

## Skill Format

Skills are subdirectories in `skills/` containing a required `SKILL.md` file.

### Example: `skills/carey-brand/SKILL.md`
```markdown
---
name: carey-brand
description: Carey Business School brand guidelines, colors, typography, and visual standards. Use when creating reports, presentations, visualizations, or any branded materials.
---

# Carey Business School Brand Guidelines

## Primary Colors
- **JHU Heritage Blue**: #002D72 (primary brand color)
- **Carey Spirit Blue**: #0072CE (digital/accent)

## Secondary Colors
- **Sable**: #31261D
- **Warm Gray**: #A59D95
- **Sandstone**: #CFB991

## Accent Colors
- **Orange**: #CF4520 (calls to action, highlights)
- **Teal**: #008080 (data visualization secondary)

## Typography
- **Headlines**: Gentona Bold
- **Body Text**: Source Sans Pro
- **Data/Tables**: Source Sans Pro Regular

## Logo Usage
- Minimum clear space: Height of "J" in Johns Hopkins
- Preferred placement: Top-left or centered
- Never stretch, rotate, or alter colors

## Chart/Visualization Standards
- Primary data series: Heritage Blue (#002D72)
- Secondary series: Spirit Blue (#0072CE)
- Tertiary series: Orange (#CF4520)
- Always include axis labels and data source citations
- Use white background for charts

## Document Templates
- Reports: JHU letterhead, Carey sub-brand
- Presentations: 16:9 aspect ratio, Heritage Blue title slides
- Executive summaries: 2-page maximum, key findings highlighted
```

### Skill Frontmatter Fields
| Field | Required | Description |
|-------|----------|-------------|
| `name` | Yes | Kebab-case identifier |
| `description` | Yes | When Claude should load this skill |
| `hooks` | No | Skill-specific hooks (PreToolUse, PostToolUse, Stop) |

---

## Command Format

Commands are Markdown files in `commands/` that become slash commands.

### Example: `commands/rfp.md`
```markdown
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

Generate a comprehensive RFP response for a $ARGUMENTS research project.

## Required Sections
1. **Executive Summary**: Brief overview of proposed approach
2. **Understanding of Requirements**: Demonstrate comprehension of client needs
3. **Methodology**: Detailed research design and approach
4. **Team Qualifications**: Carey research team expertise
5. **Timeline**: Phased project schedule with milestones
6. **Budget**: Itemized cost estimate
7. **Deliverables**: List of outputs and formats

## Guidelines
- Reference Carey's research capabilities and past work
- Include appropriate IRB considerations if human subjects involved
- Use professional academic tone
- Follow Carey brand guidelines for formatting
- Export as both .docx and .pdf
```

### Command Frontmatter Fields
| Field | Required | Description |
|-------|----------|-------------|
| `description` | Yes | Shown in command help |
| `arguments` | No | Array of named arguments with `$ARGUMENTS` placeholder |
| `allowedTools` | No | Tools available during command execution |
| `hooks` | No | Command-specific hooks |

---

## Hooks Configuration

### `hooks/hooks.json` or in `.claude/settings.json`
```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Write|Edit",
        "hooks": [
          {
            "type": "command",
            "command": "bash ${CLAUDE_PLUGIN_ROOT}/scripts/pii-scanner.sh"
          }
        ]
      }
    ],
    "PostToolUse": [
      {
        "matcher": "Write",
        "hooks": [
          {
            "type": "command",
            "command": "bash ${CLAUDE_PLUGIN_ROOT}/scripts/data-validation.sh"
          }
        ]
      }
    ],
    "Stop": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "prompt",
            "prompt": "Verify all outputs follow Carey brand guidelines and contain no PII."
          }
        ]
      }
    ]
  }
}
```

### Hook Event Types
| Event | Description |
|-------|-------------|
| `PreToolUse` | Before tool execution (can block with exit code 2) |
| `PostToolUse` | After tool completes successfully |
| `UserPromptSubmit` | When user submits a prompt |
| `Stop` | When agent finishes responding |
| `SubagentStop` | When subagent completes |
| `Notification` | When Claude sends notifications |

---

## Agency Organizational Structure

```
                    ┌─────────────────────────┐
                    │   AGENCY DIRECTOR       │
                    │   (Orchestrator Agent)  │
                    └───────────┬─────────────┘
                                │
        ┌───────────────────────┼───────────────────────┐
        │                       │                       │
        ▼                       ▼                       ▼
┌───────────────┐     ┌─────────────────┐     ┌─────────────────┐
│    ADMIN      │     │    RESEARCH     │     │    CREATIVE     │
│   SERVICES    │     │   OPERATIONS    │     │    SERVICES     │
└───────────────┘     └────────┬────────┘     └─────────────────┘
                               │
                       ┌───────┴───────┐
                       │               │
                       ▼               ▼
                 ┌──────────┐   ┌──────────┐
                 │ Primary  │   │Secondary │
                 │ Research │   │ Research │
                 └──────────┘   └──────────┘
```

---

## Agents

### 1. Director (Orchestrator)
**File**: `agents/director.md`
**Role**: Routes requests to appropriate teams, manages cross-functional projects.

### 2. Admin Services Agent
**File**: `agents/admin-services.md`
**Role**: Business operations, RFPs, proposals, planning, scheduling.

**Skills**:
- `rfp-generation` - RFP response templates and best practices
- `project-management` - Timeline and milestone planning

**Commands**:
| Command | Description |
|---------|-------------|
| `/rfp <type>` | Generate RFP response |
| `/proposal <scope>` | Write research proposal |
| `/plan <project>` | Create project plan |
| `/schedule <project>` | Generate timeline |
| `/budget <scope>` | Estimate costs |

### 3. Primary Research Agent
**File**: `agents/primary-research.md`
**Role**: Design and execute original research studies.

**Skills**:
- `survey-methodology` - Survey design best practices, question types
- `qualitative-methods` - Focus groups, interviews, ethnography
- `irb-compliance` - Human subjects research requirements

**Commands**:
| Command | Description |
|---------|-------------|
| `/survey-design <objectives>` | Design survey instrument |
| `/focus-group-guide <topic>` | Create moderation guide |
| `/interview-protocol <type>` | Develop interview guide |
| `/screener <criteria>` | Create screening questionnaire |
| `/consent <study-type>` | Generate IRB consent form |

### 4. Secondary Research Agent
**File**: `agents/secondary-research.md`
**Role**: Desk research, competitive intelligence, market analysis.

**Skills**:
- `industry-analysis` - Industry landscape frameworks
- `competitive-intelligence` - Business school benchmarking
- `academic-research` - Literature review methodology

**Commands**:
| Command | Description |
|---------|-------------|
| `/industry <sector>` | Industry landscape analysis |
| `/competitor <school>` | Competitive intelligence brief |
| `/market-size <segment>` | TAM/SAM/SOM analysis |
| `/trends <topic>` | Market trend analysis |
| `/lit-review <topic>` | Academic literature synthesis |
| `/rankings` | Business school rankings analysis |

### 5. Data & Analytics Agent
**File**: `agents/data-analytics.md`
**Role**: Data management, statistical analysis, insights generation.

**Skills**:
- `statistical-methods` - Survey analysis, significance testing
- `qualitative-coding` - Theme extraction, sentiment analysis
- `data-visualization` - Chart types, best practices

**Commands**:
| Command | Description |
|---------|-------------|
| `/import <source>` | Import data from Qualtrics, Excel |
| `/clean <file>` | Data cleaning and preparation |
| `/analyze-survey <file>` | Statistical analysis |
| `/crosstab <file> <vars>` | Cross-tabulation |
| `/themes <file>` | Extract qualitative themes |
| `/sentiment <file>` | Sentiment analysis |

### 6. Creative Services Agent
**File**: `agents/creative-services.md`
**Role**: Design, branding, report production, visualizations.

**Skills**:
- `carey-brand` - JHU/Carey brand guidelines
- `data-visualization` - Chart design standards
- `report-production` - Document formatting

**Commands**:
| Command | Description |
|---------|-------------|
| `/design <asset-type>` | Create branded asset |
| `/viz <file> <chart-type>` | Generate visualization |
| `/exec-summary <file>` | Create executive summary |
| `/report <template>` | Generate formatted report |
| `/presentation <file>` | Create PowerPoint deck |
| `/cite <style>` | Format citations |
| `/brand-check <file>` | Verify brand compliance |

---

## MCP Server Configuration

### `.mcp.json`
```json
{
  "mcpServers": {
    "qualtrics": {
      "command": "npx",
      "args": ["-y", "@carey/qualtrics-mcp"],
      "env": {
        "QUALTRICS_API_TOKEN": "${QUALTRICS_API_TOKEN}"
      }
    },
    "sharepoint": {
      "command": "npx",
      "args": ["-y", "@carey/sharepoint-mcp"],
      "env": {
        "SHAREPOINT_SITE": "${SHAREPOINT_SITE}"
      }
    }
  }
}
```

---

## Security & Compliance

- All PII must be handled according to JHU data governance policies
- Research data should not be committed to version control
- Use environment variables for API credentials
- IRB approval required for human subjects research
- FERPA compliance for student data
- PII scanner hook runs before all file writes

---

## Sources

Documentation based on:
- [Claude Code Plugins Reference](https://code.claude.com/docs/en/plugins-reference)
- [Claude Code Skills](https://code.claude.com/docs/en/skills)
- [Claude Code Subagents](https://code.claude.com/docs/en/sub-agents)
- [Claude Code Hooks Guide](https://code.claude.com/docs/en/hooks-guide)
