// ... existing code ...

## Table of Contents

| #  | Section                                      | Description                                      |
|----|----------------------------------------------|--------------------------------------------------|
| 1  | [Basic Questions On Linux](#basic-questions-on-linux) | Fundamental Linux concepts and questions.         |
| 2  | [Important Directories In Linux](#important-directories-in-linux) | Overview of key directories in Linux.             |
| 3  | [User Information](#user-information)        | Commands for managing user information.           |
| 4  | [File And Directory Commands](#file-and-directory-commands) | Commands for file and directory management.       |
| 5  | [File Permissions](#file-permissions)        | Understanding and managing file permissions.      |
| 6  | [Search And Replace](#search-and-replace)    | Tools for searching and replacing text.           |
| 7  | [Networking Commands](#networking-commands)  | Essential networking commands.                    |
| 8  | [Sudo and Installing Packages](#sudo-and-installing-packages) | Managing packages and using sudo.                 |
| 9  | [System And Hardware Information](#system-and-hardware-information) | Commands for system and hardware info.            |
| 10 | [Disk Usage](#disk-usage)                    | Checking disk usage.                              |
| 11 | [Users And Groups](#users-and-groups)        | Managing users and groups.                        |
| 12 | [Services And Process Management](#services-and-process-management) | Managing services and processes.                  |
| 13 | [Archiving And Unzipping Files](#archiving-and-unzipping-files) | Commands for archiving and unzipping.             |
| 14 | [SSH Commands](#ssh-commands)                | Secure Shell commands.                            |
| 15 | [Vi/Vim Commands](#vi-vim-commands)          | Text editing with Vi/Vim.                         |
| 16 | [History Command](#history-command)          | Using the history command.                        |
| 17 | [Curl Command](#curl-command)                | Data transfer with curl.                          |
| 18 | [Bash Scripting Commands](#bash-scripting-commands) | Essential bash scripting commands and examples.   |
| 19 | [Note From Me ❤](#note-from-me)              | Personal note and contributions.                  |

## Bash Scripting Commands

### Basic Scripting

1. **Print to Terminal**

   ```bash
   #!/bin/bash
   echo "Hello, world!"
   ```

2. **Get User Input**

   ```bash
   read -p "Enter your name: " name
   echo "Hello, $name!"
   ```

### Files and Directories

1. **Create a Directory**

   ```bash
   mkdir -p myfolder
   ```

2. **Copy Files**

   ```bash
   cp source.txt backup/
   ```

3. **Move or Rename Files**

   ```bash
   mv file.txt folder/
   ```

4. **Delete Directory Recursively**

   ```bash
   rm -rf old_folder/
   ```

### Loops & Conditions

1. **For Loop**

   ```bash
   for file in *.txt; do
       echo "Found file: $file"
   done
   ```

2. **If Condition**

   ```bash
   if [ -f "file.txt" ]; then
       echo "File exists"
   else
       echo "File not found"
   fi
   ```

### Variables and Arguments

1. **Define a Variable**

   ```bash
   NAME="LinuxUser"
   echo "Hello $NAME"
   ```

2. **Positional Arguments**

   ```bash
   echo "Script name: $0"
   echo "First arg: $1"
   ```

### Date and Time

1. **Current Timestamp**

   ```bash
   DATE=$(date +"%Y-%m-%d_%H-%M")
   echo "Current timestamp: $DATE"
   ```

### Disk, Memory, System Info

1. **Disk Usage**

   ```bash
   df -h
   ```

2. **Memory Usage**

   ```bash
   free -m
   ```

3. **CPU/Memory Snapshot**

   ```bash
   top -b -n1
   ```

4. **System Uptime**

   ```bash
   uptime
   ```

5. **Process List**

   ```bash
   ps aux
   ```

### Text Processing

1. **Search Logs**

   ```bash
   grep "ERROR" logfile.txt
   ```

2. **Print First Column**

   ```bash
   awk '{print $1}' data.txt
   ```

3. **Replace Text**

   ```bash
   sed 's/foo/bar/g' file.txt
   ```

4. **Extract Usernames**

   ```bash
   cut -d':' -f1 /etc/passwd
   ```

### Functions

1. **Define and Call a Function**

   ```bash
   greet() {
       echo "Welcome, $1!"
   }
   greet "Alice"
   ```

### Archiving & Compression

1. **Compress Folder**

   ```bash
   tar -czf archive.tar.gz folder/
   ```

2. **Extract tar.gz**

   ```bash
   tar -xzf archive.tar.gz
   ```

3. **Compress File**

   ```bash
   gzip file.txt
   ```

4. **Decompress File**

   ```bash
   gunzip file.txt.gz
   ```

### Cleanup & Automation

1. **Delete Old Logs**

   ```bash
   find /var/log -type f -name "*.log" -mtime +7 -exec rm {} \;
   ```

2. **Example Cron Entry for Daily Run**

   ```bash
   cronjob="0 6 * * * /path/to/script.sh"
   ```

### Networking Tools

1. **Check Internet**

   ```bash
   ping -c 4 google.com
   ```

2. **Get External IP**

   ```bash
   curl ifconfig.me
   ```

3. **Download File**

   ```bash
   wget https://example.com/file.txt
   ```

### Permissions & Execution

1. **Make Script Executable**

   ```bash
   chmod +x script.sh
   ```

2. **Run with Admin Privileges**

   ```bash
   sudo ./script.sh
   ```

### Logging Output

1. **Log to File**

   ```bash
   echo "Starting backup..." >> backup.log
   ```

### Exit Codes and Error Handling

1. **Command Failure Handling**

   ```bash
   command || echo "❌ Command failed"
   ```

2. **Exit Codes**

   ```bash
   exit 0    # Successful exit
   exit 1    # Failure exit
   ```

// ... existing code ...