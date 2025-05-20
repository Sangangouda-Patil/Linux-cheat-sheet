# 🐚 Bash Scripting Projects – Real-World Linux Automation

Welcome to `mybash-scripts/` – a curated collection of Bash scripting projects to automate common system administration tasks.

Each script is fully documented, tested, and runnable on any Linux machine with Bash. This folder is part of my broader Linux learning and DevOps automation journey.

---

## 📁 Project List

| Script | Description |
|--------|-------------|
| `personal_backup.sh` | Backs up files to a dated folder (e.g., `backup-2025-05-20`) |
| `folder_size_reporter.sh` | Lists subfolders and files by size, largest first |
| `image_organizer.sh` | Organizes `.jpg` and `.png` files into date-named folders |
| `todo.sh` | Simple interactive command-line TODO manager with file persistence |
| `log_rotator.sh` | Compresses `.log` files older than 7 days, deletes after 30 |
| `wifi_scanner.sh` | Lists available WiFi networks using `nmcli` |
| `system_health_report.sh` | Generates daily system report: CPU, memory, disk usage |

---

## 🧠 Topics Covered

- 📦 File operations (`cp`, `mv`, `find`, `tar`)
- 🧮 Loops, conditions, functions
- 📊 Disk & memory monitoring
- 🔄 Automation with `cron`
- 🧾 CLI menus and input handling
- 📂 Archiving and clean-up

---

1. **Make any script executable**

   ```bash
   chmod +x scriptname.sh
   ```

   ### Basic Scripting

1. **Run a script**

   ```bash
   ./system_health_report.sh
    ```

## ▶️ How to Use

1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/linuxcheatsheet.git
   cd linuxcheatsheet/mybash-scripts

