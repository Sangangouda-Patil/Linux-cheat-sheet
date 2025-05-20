#!/bin/bash
# folder_size_reporter.sh
# ========================================
# This script reports sizes of all items 
# in a given folder, sorted largest to smallest.
# ========================================

# Read first argument as target directory
TARGET_DIR="$1"

# Check if user provided an argument
if [ -z "$TARGET_DIR" ]; then
    # If no argument, show usage instructions and exit
    echo "Usage: $0 /path/to/directory"
    exit 1
fi

# Main command:
# - du: estimate disk usage
#   -s : summarize for each item (do not drill down)
#   -h : human readable sizes (K, M, G etc.)
# - "$TARGET_DIR"/* : check all items inside the folder
# - 2>/dev/null : suppress error messages
# - sort -hr : sort by size (largest first)
du -sh "$TARGET_DIR"/* 2>/dev/null | sort -hr
