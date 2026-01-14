#!/bin/bash
# Brand Compliance Check Script
# Verifies outputs follow Carey Business School brand guidelines

# Carey Brand Colors
HERITAGE_BLUE="#002D72"
SPIRIT_BLUE="#0072CE"
ACCENT_ORANGE="#CF4520"

# Read input
INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

if [ -z "$FILE_PATH" ] || [ ! -f "$FILE_PATH" ]; then
    exit 0
fi

EXT="${FILE_PATH##*.}"
WARNINGS=""

case "$EXT" in
    md|html)
        # Check for off-brand colors in markdown/html
        CONTENT=$(cat "$FILE_PATH")

        # Look for hex colors that aren't in the brand palette
        OFF_BRAND=$(echo "$CONTENT" | grep -oE '#[0-9A-Fa-f]{6}' | \
            grep -ivE "(002D72|0072CE|CF4520|31261D|A59D95|CFB991|008080|FFFFFF|000000)" | \
            sort -u)

        if [ -n "$OFF_BRAND" ]; then
            WARNINGS="${WARNINGS}Non-brand colors detected: $OFF_BRAND\n"
        fi
        ;;
    css)
        # Check CSS files for brand compliance
        OFF_BRAND=$(grep -oE '#[0-9A-Fa-f]{6}' "$FILE_PATH" | \
            grep -ivE "(002D72|0072CE|CF4520|31261D|A59D95|CFB991|008080|FFFFFF|000000)" | \
            sort -u)

        if [ -n "$OFF_BRAND" ]; then
            WARNINGS="${WARNINGS}Non-brand colors in CSS: $OFF_BRAND\n"
        fi
        ;;
esac

if [ -n "$WARNINGS" ]; then
    echo -e "Brand Compliance Warnings:\n$WARNINGS" >&2
fi

exit 0
