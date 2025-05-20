#!/bin/bash
# image_organizer.sh
# ========================================
# Moves .jpg and .png files from a folder
# into subfolders based on file creation date.
# ========================================

# First argument is the target folder
TARGET_DIR="$1"

# Check if user gave a folder path
if [ -z "$TARGET_DIR" ]; then
    echo "Usage: $0 /path/to/images"
    exit 1
fi

# Go into the target folder
cd "$TARGET_DIR" || exit

# Loop over all jpg and png files
for file in *.jpg *.png; do
    # Skip if no matching files exist
    [ -e "$file" ] || continue

    # Get file creation date (format: YYYY-MM-DD)
    DATE=$(stat -c %y "$file" | cut -d' ' -f1)

    # Make subfolder for date (if not exists)
    mkdir -p "$DATE"

    # Move file into corresponding date folder
    mv "$file" "$DATE/"
done

echo "✅ Images organized by creation date."
