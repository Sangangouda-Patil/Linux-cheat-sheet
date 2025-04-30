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

1. **who**: It is used to get information about currently logged-in users on the system. If you don't provide any option or arguments, the command displays the following information for each logged-in user.
   - Login name of the user
   - User terminal
   - Date & Time of login
   - Remote host name of the user

   ```bash
   $ who
   sam  :0 2023-10-05 10:30 (:0)
   ```

2. **whoami**: It displays the system's username.

   ```bash
   $ whoami
   sam
   ```

3. **id**: It displays the user identification (the real and effective user and group IDs) information.

   ```bash
   $ id
   uid=2002(sam) gid=2002(sam) groups=2002(sam),10(admin),20(dialout),30(audio),40(video)
   ```

4. **groups**: This command is used to display all the groups to which the user belongs.

   ```bash
   $ groups
   sam: sam, admin, dialout, audio, video
   ```

5. **finger**: Used to check the information of any currently logged-in users. It displays users' login time, tty (name), idle time, home directory, shell name, etc.

   ```bash
   $ finger
   Login     Name       Tty      Idle  Login Time   Office     Office Phone
   sam       Sam        pts/2          Oct  5 10:30
   ```

   To install:
   ```bash
   $ sudo apt install finger
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
   sam      pts/2        :0               Thu Oct  5 10:30   still logged in
   reboot   system boot  5.4.0-29-generic Thu Oct  5 08:55   still running
   ```

10. **lastlog**: The lastlog command is used to find the details of a recent login of all users or of a given user.

   ```bash
   $ lastlog

   Username         Port     From             Latest
   root                                       **Never logged in**
   sam              pts/2    :0               Thu Oct  5 10:30
   ```