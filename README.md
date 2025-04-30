Welcome to my Linux command documentation! This repository contains all the essential Linux commands I've learned so far during my DevOps journey. I'll keep adding new commands and their explanations as I continue to learn and explore more about Linux.

## Table of Contents

1. [Basic Questions On Linux](#basic-questions-on-linux)
2. [Important Directories In Linux](#important-directories-in-linux)
3. [User Information](#user-information)
4. [File And Directory Commands](#file-and-directory-commands)
5. [File Permissions](#file-permissions)
6. [Search And Replace](#search-and-replace)
7. [Networking Commands](#networking-commands)
8. [Sudo and Installing packages](#sudo-and-installing-packages)
9. [System And Hardware Information](#system-and-hardware-information)
10. [Disk Usage](#disk-usage)
11. [Users And Groups](#users-and-groups)
12. [Services And Process Management](#services-and-process-management)
13. [Archiving And Unzipping Files](#archiving-and-unzipping-files)
14. [SSH Commands](#ssh-commands)
15. [Vi/Vim Commands](#vi-vim-commands)
16. [History Command](#history-command)
17. [Curl Command](#curl-command)
18. [Note From ME](#note-from-me)







## User Information

1. **whoami**: It displays the system's username.

   ```bash
   $ whoami
   sam
   ```
  
   ```

2. **id**: It displays the user identification (the real and effective user and group IDs) information.

   ```bash
   $ id
   uid=2002(sam) gid=2002(sam) groups=2002(sam),10(admin),20(dialout),30(audio),40(video)
   ```

3.  **who**: It is used to get information about currently logged-in users on the system. If you don't provide any option or arguments, the command displays the following information for each logged-in user.
   - Login name of the user
   - User terminal
   - Date & Time of login
   - Remote host name of the user

   ```bash
   $ who
   sam  :0 2023-10-05 10:30 (:0)
   

4. **groups**: This command is used to display all the groups to which the user belongs.

   ```bash
   $ groups
   sam: sam, admin, dialout, audio, video, deepak
   ```

5. **finger**: Used to check the information of any currently logged-in users. It displays users' login time, tty (name), idle time, home directory, shell name, etc.

   ```bash
   $ finger
   Login     Name       Tty      Idle  Login Time   Office     Office Phone
   sam       Sam        pts/2          Apr  30 11:25
   ```

   To install:
   ```bash
   $ sudo apt or yum install finger
   ```

6. **users**: Displays usernames of all users currently logged on the system.

   ```bash
   $ users
   sam
   ```

7. **grep**: It is a powerful pattern searching tool to find information about a specific user from the system accounts file: `/etc/passwd`.

   ```bash
   $ grep -i sam /etc/passwd
   sam:x:2002:2002:Sam,,,:/home/sam:/bin/bash
   ```

8. **w**: It is a command-line utility that displays information about currently logged-in users and what each user is doing.

   ```bash
   $ w
   10:45:00 up  1:30,  1 user,  load average: 0.15, 0.10, 0.05
   USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
   sam      pts/2    :0               10:30   0.10s  0.20s  0.05s /bin/bash
   ```

9. **last** or **lastb**: Displays a list of last logged-in users on the system. You can pass usernames to display their login and hostname details.

   ```bash
   $ last
   sam      pts/2        :0               Wed Apr 30 11:25   still logged in
   reboot   system boot  5.4.0-29-generic Wed Apr 30 11:25   still running
   ```

10. **lastlog**: The lastlog command is used to find the details of a recent login of all users or of a given user.

   ```bash
   $ lastlog

   Username         Port     From             Latest
   root                                       **Never logged in**
   sam              pts/2    :0               Wed Apr 30 11:28
   ```

## File and Directory Commands

1. **pwd**: Prints the full path of the current working directory.

   ```bash
   $ pwd
   /home/sam/Documents/Work
   ```

2. **ls**: Lists files and directories in the current directory, with options to modify the output.

   ```bash
   $ ls
   reports  scripts  data  README.md

   # Listing files & directories with time in reverse order
   $ ls -ltr
   drwxr-xr-x 2 sam sam 4096 Oct  5  2023 Backups
   drwxr-xr-x 2 sam sam 4096 Oct  5  2023 Configs
   drwxr-xr-x 2 sam sam 4096 Oct  5  2023 Archives

   # Home directory
   $ ls ~
   Documents  Downloads  Music  Pictures  Videos
   ```

   Options for `ls`:
   - `-a`: Include hidden files
   - `-R`: List directories recursively
   - `-r`: Reverse the order
   - `-t`: Sort by modification time
   - `-S`: Sort by file size
   - `-l`: Detailed listing
   - `-1`: One entry per line
   - `-m`: Comma-separated output
   - `-Q`: Quote the output

3. **mkdir**: Creates new directories.

   ```bash
   $ mkdir projects
   $ ls
   projects
   ```

   Use `-p` to create nested directories.

   ```bash
   $ mkdir -p dev/test/code
   $ cd dev/test/code
   ~/Documents/dev/test/code$
   ```

4. **rmdir**: Removes empty directories safely.

   ```bash
   # Remove empty directory
   $ rmdir old_folder

   # Remove multiple directories
   $ rmdir temp1 temp2 temp3

   # Remove entire directory tree
   $ rmdir -p a/b/c
   ```

5. **rm**: Deletes files and directories.

   ```bash
   # Remove file
   $ rm old_file.txt

   # Remove file forcefully
   $ rm -f important_file.txt

   # Remove directory
   $ rm -r old_directory

   # Remove directory forcefully
   $ rm -rf critical_directory
   ```

6. **touch**: Creates empty files or updates timestamps.

   ```bash
   # Create a new file
   $ touch new_file.txt

   # Create multiple files
   $ touch file1.txt file2.txt file3.txt

   # Change access time
   $ touch -a access_file.txt

   # Change modification time
   $ touch -m modify_file.txt

   # Use timestamp of another file
   $ touch -r source_file.txt target_file.txt

   # Create file with specific time
   $ touch -t 202310051200 specific_time_file.txt
   ```

7. **cat**: Concatenates and displays file content.

   ```bash
   # Create a file
   $ cat > notes.txt
   This is a new note.

   # View file contents
   $ cat notes.txt

   # More & Less options
   $ cat large_file.txt | more
   $ cat large_file.txt | less
   ```

   8. **vi, vim**: Text editors to create and edit files. `vim` is the improved version of `vi`, commonly preferred.

   ```bash
   # Open a file with vi
   $ vi file.txt

   # Open a file with vim
   $ vim file.txt
   ```

## File Permissions

Linux is a multi-user operating system, so it's necessary to provide security to prevent unauthorized access to files. Authorization is divided into two levels:

### Ownership

Each file or directory has three types of owners:
- **User**: The owner of the file who created it.
- **Group**: A group of users with the same access permissions.
- **Other**: All other users on the system.

### Permissions

Each file or directory has the following permissions for the above owners:
- **Read (r)**: Allows opening and reading a file or listing its contents for a directory.
- **Write (w)**: Allows modifying the contents of a file and managing files in a directory.
- **Execute (x)**: Allows running a program in Unix/Linux.

Permissions are indicated by:
- `r` = read permission
- `w` = write permission
- `x` = execute permission
- `-` = no permission

### Changing Access

The `chmod` command is used to change the access mode of a file. It sets permissions (read, write, execute) for the owner, group, and others.

```bash
chmod [reference][operator][mode] file...
```

**Example:**
```bash
chmod ugo-rwx test.txt
```

#### Absolute Mode

Permissions are represented in a three-digit octal number:

| Permission Type       | Number | Symbol |
|-----------------------|--------|--------|
| No Permission         | 0      | ---    |
| Execute               | 1      | --x    |
| Write                 | 2      | -w-    |
| Execute + Write       | 3      | -wx    |
| Read                  | 4      | r--    |
| Read + Execute        | 5      | r-x    |
| Read + Write          | 6      | rw-    |
| Read + Write + Execute| 7      | rwx    |

**Example:**
```bash
chmod 764 test.txt
```

#### Symbolic Mode

Modify permissions of a specific owner:

- **Owners:**
  - `u`: user/owner
  - `g`: group
  - `o`: other
  - `a`: all

- **Operators:**
  - `+`: Adds permission
  - `-`: Removes permission
  - `=`: Assigns permission

### Changing Ownership and Group

Change the ownership and group of a file/directory using `chown`:

```bash
chown user filename
chown user:group filename
```

**Example:**
```bash
chown sam test.txt
chown sam:admin test.txt
```

#### Change Group-Owner Only

Use `chgrp` to change the group owner only:

```bash
chgrp group_name filename
```

**Example:**
```bash
sudo chgrp developers test.txt
```