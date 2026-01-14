#!/bin/bash
# PII Scanner Hook Script
# Scans files for potential personally identifiable information before writing

# This script is called by Claude Code PreToolUse hook
# Input is provided via stdin as JSON with tool_input

# Read the JSON input
INPUT=$(cat)

# Extract file path from the tool input
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // .tool_input.content // empty')

if [ -z "$FILE_PATH" ]; then
    # No file path, check content directly
    CONTENT=$(echo "$INPUT" | jq -r '.tool_input.content // .tool_input.new_string // empty')
else
    CONTENT="$FILE_PATH"
fi

# PII patterns to detect
# Email addresses
if echo "$CONTENT" | grep -qE '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}'; then
    # Check if it's a JHU or example email (allowed)
    if ! echo "$CONTENT" | grep -qE '@(jhu\.edu|example\.com|carey\.jhu\.edu)'; then
        echo "WARNING: Potential email address detected. Verify this is appropriate to include." >&2
    fi
fi

# Social Security Numbers
if echo "$CONTENT" | grep -qE '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b'; then
    echo "BLOCKED: Social Security Number pattern detected. Remove before proceeding." >&2
    exit 2
fi

# Phone numbers (basic pattern)
if echo "$CONTENT" | grep -qE '\b[0-9]{3}[-.]?[0-9]{3}[-.]?[0-9]{4}\b'; then
    echo "WARNING: Potential phone number detected. Verify this is appropriate to include." >&2
fi

# Credit card numbers (basic pattern)
if echo "$CONTENT" | grep -qE '\b[0-9]{4}[-\s]?[0-9]{4}[-\s]?[0-9]{4}[-\s]?[0-9]{4}\b'; then
    echo "BLOCKED: Credit card number pattern detected. Remove before proceeding." >&2
    exit 2
fi

# If we get here, no blocking issues found
exit 0
