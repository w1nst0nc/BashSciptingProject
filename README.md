# BashSciptingProject

Started with using the date command which returns the date and time.
Also tested the cal, pwd, and ls commands. 'Cal' did not work in GitBash but it did in Ubuntu.
Created first script 'task.sh' using $ nano vi task.sh then added the above commands into the script file on seperate lines.
Saved the script using CTRL X, once script was saved I did chmod +x ./task.sh to make the file an executable.
Tested the script by typing ./task.sh. The script properly output the data from the commands in the script.
Added #!/bin/bash to my task.sh script to define it as Bash.
Used 'file' command to check the file type of the task.sh file. 
Learned you can also run the bash script with 'bash task.sh'.
Used the cd and pwd commands to practice navigating the file structure. 
Created the 'hello-world.sh' script which has the purpose of printing out "Hello World." Tested it with ./hello-world.sh
The 'man' command to bring up the manual for a command did not work for me in GitBash. 
I tried man ls, man pwd, man cd, man date but I couldn't get any manuals to appear.
Under 'Simple Backup Bash Shell Script' I had trouble following the tutorials demonstration of the tar -czf command.
I was able to enter the first command 'tar -czf /tmp/myhome_directory.tar.gz /c/Users/Winst/' which would return tar: Removing leading '/' from member names.
After that command whenever I tried 'ls -1 /tmp/myhome_directory.tar.gz' or 'rm /tmp/myhome_directory.tar.gz' I would get "Cannot open: Device or resource busy."
I was able to create the 'welcome.sh' script and got the following output: "Welcome back winst! Today is Sunday, which is the best day of the entire week! Your Bash Shell version is: 4.4.23(1)-release. Enjoy!"
Had issues trying to create the backup.sh script. I believe the issue has to do with the tar -czf command. 
After creating the 'backup.sh' script and testing it with './backup.sh' it returned "tar: Removing leading '/' from member names"
Update: After running the 'backup.sh' script using './backup.sh' I left my PC alone for about an hour and when I came back I had an error from windows that my C:/ drive was full with temporary files having 111gb in it. 
Added the '2> /dev/null' line to my backup.sh script to get rid of the stderr message. 
Added in the two functions that display the total files and directories that will be included in the backup by the backup.sh script. 

