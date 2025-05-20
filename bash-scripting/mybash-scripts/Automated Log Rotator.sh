!/bin/bash
# log_rotator.sh

LOG_DIR="/var/log"
ARCHIVE_DIR="$HOME/log_archive"
mkdir -p "$ARCHIVE_DIR"

find "$LOG_DIR" -type f -name "*.log" -mtime +7 -exec gzip {} \;
find "$LOG_DIR" -type f -name "*.gz" -exec mv {} "$ARCHIVE_DIR/" \;
find "$ARCHIVE_DIR" -type f -name "*.gz" -mtime +30 -exec rm {} \;

echo "✅ Log rotation completed."
