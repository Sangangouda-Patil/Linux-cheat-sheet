# Checks:

# CPU & memory usage

# Disk usage

# Number of running processes

!/bin/bash
# system_health_report.sh

DATE=$(date +"%Y-%m-%d")
REPORT_FILE="$HOME/system_report_$DATE.txt"

echo "===== System Health Report - $DATE =====" > "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "🖥️ CPU and Memory Usage:" >> "$REPORT_FILE"
top -b -n1 | head -n 5 >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "💾 Disk Usage:" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "⚙️ Running Processes:" >> "$REPORT_FILE"
ps -e --no-headers | wc -l >> "$REPORT_FILE"

echo "✅ Report saved to $REPORT_FILE"
