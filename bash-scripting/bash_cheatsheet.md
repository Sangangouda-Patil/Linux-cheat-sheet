## Table of Contents

| #  | Section                                      | Description                                      |
|----|----------------------------------------------|--------------------------------------------------|
| 1  | [Basic Scripting](#basic-scripting)          | Print to terminal and get user input.            |
| 2  | [Files and Directories](#files-and-directories) | Create, copy, move, and delete files and directories. |
| 3  | [Loops & Conditions](#loops--conditions)     | Using loops and conditional statements.          |
| 4  | [Variables and Arguments](#variables-and-arguments) | Define variables and use positional arguments.   |
| 5  | [Date and Time](#date-and-time)              | Work with dates and timestamps.                  |
| 6  | [Disk, Memory, System Info](#disk-memory-system-info) | Check system resource usage.            |
| 7  | [Text Processing](#text-processing)          | Search, replace, and manipulate text.            |
| 8  | [Functions](#functions)                      | Define and call functions.                       |
| 9  | [Archiving & Compression](#archiving--compression) | Compress and extract files.                |
| 10 | [Cleanup & Automation](#cleanup--automation) | Automate tasks and clean up files.               |
| 11 | [Networking Tools](#networking-tools)        | Network-related commands and tools.              |
| 12 | [Permissions & Execution](#permissions--execution) | Manage file permissions and execute scripts.     |
| 13 | [Logging Output](#logging-output)            | Log output to files.                             |
| 14 | [Exit Codes and Error Handling](#exit-codes-and-error-handling) | Handle errors and exit codes. |

## Basic Scripting

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

## Files and Directories

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

## Loops & Conditions

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

3. **Inline If Statements**

   ```bash
   #!/bin/bash
   [[ $USER = 'rehan' ]] && echo 'yes' || echo 'no'
   ```

4. **While Condition**

   ```bash
   #!/bin/bash
   declare -i counter
   counter=10
   while [ $counter -gt 2 ]; do
       echo The counter is $counter
       counter=counter-1
   done
   ```

5. **Case Statements**

   ```bash
   #!/bin/bash
   echo "What's the weather like tomorrow?"
   read weather

   case $weather in
       sunny | warm ) echo "Nice weather: $weather" ;;
       cloudy | cool ) echo "Not bad weather: $weather" ;;
       rainy | cold ) echo "Terrible weather: $weather" ;;
       * ) echo "Don't understand" ;;
   esac
   ```

### Boolean Operators

- **$foo** - Is true
- **!$foo** - Is false

### Numeric Operators

- **-eq** - Equals
- **-ne** - Not equals
- **-gt** - Greater than
- **-ge** - Greater than or equal to
- **-lt** - Less than
- **-le** - Less than or equal to
- **-e foo.txt** - Check file exists
- **-z foo** - Check if variable exists

### String Operators

- **=** - Equals
- **==** - Equals
- **-z** - Is null
- **-n** - Is not null
- **<** - Is less than in ASCII alphabetical order
- **>** - Is greater than in ASCII alphabetical order

## Variables and Arguments

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

## Date and Time

1. **Current Timestamp**

   ```bash
   DATE=$(date +"%Y-%m-%d_%H-%M")
   echo "Current timestamp: $DATE"
   ```

## Disk, Memory, System Info

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

## Text Processing

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

## Functions

1. **Define and Call a Function**

   ```bash
   greet() {
       echo "Welcome, $1!"
   }
   greet "Alice"
   ```

## Archiving & Compression

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

## Cleanup & Automation

1. **Delete Old Logs**

   ```bash
   find /var/log -type f -name "*.log" -mtime +7 -exec rm {} \;
   ```

2. **Example Cron Entry for Daily Run**

   ```bash
   cronjob="0 6 * * * /path/to/script.sh"
   ```

## Networking Tools

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

## Permissions & Execution

1. **Make Script Executable**

   ```bash
   chmod +x script.sh
   ```

2. **Run with Admin Privileges**

   ```bash
   sudo ./script.sh
   ```

## Logging Output

1. **Log to File**

   ```bash
   echo "Starting backup..." >> backup.log
   ```

## Exit Codes and Error Handling

1. **Command Failure Handling**

   ```bash
   command || echo "❌ Command failed"
   ```

2. **Exit Codes**

   ```bash
   exit 0    # Successful exit
   exit 1    # Failure exit
   ```












