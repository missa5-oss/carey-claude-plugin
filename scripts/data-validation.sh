#!/bin/bash
# Data Validation Hook Script
# Validates data files after writing for quality and completeness

# This script is called by Claude Code PostToolUse hook
# Input is provided via stdin as JSON with tool_input and tool_result

# Read the JSON input
INPUT=$(cat)

# Extract file path
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

if [ -z "$FILE_PATH" ]; then
    exit 0
fi

# Get file extension
EXT="${FILE_PATH##*.}"

case "$EXT" in
    csv)
        # Check if file exists and has content
        if [ -f "$FILE_PATH" ]; then
            LINE_COUNT=$(wc -l < "$FILE_PATH")
            if [ "$LINE_COUNT" -lt 2 ]; then
                echo "WARNING: CSV file appears to have no data rows." >&2
            fi

            # Check for consistent column counts
            HEADER_COLS=$(head -1 "$FILE_PATH" | awk -F',' '{print NF}')
            INCONSISTENT=$(awk -F',' -v cols="$HEADER_COLS" 'NR>1 && NF!=cols {print NR}' "$FILE_PATH" | head -5)
            if [ -n "$INCONSISTENT" ]; then
                echo "WARNING: Inconsistent column counts detected on lines: $INCONSISTENT" >&2
            fi
        fi
        ;;
    xlsx|xls)
        echo "INFO: Excel file created. Manual validation recommended." >&2
        ;;
    json)
        # Validate JSON syntax
        if [ -f "$FILE_PATH" ]; then
            if ! jq empty "$FILE_PATH" 2>/dev/null; then
                echo "WARNING: Invalid JSON syntax detected." >&2
            fi
        fi
        ;;
    md|txt)
        # Check for empty files
        if [ -f "$FILE_PATH" ]; then
            if [ ! -s "$FILE_PATH" ]; then
                echo "WARNING: File appears to be empty." >&2
            fi
        fi
        ;;
esac

exit 0
