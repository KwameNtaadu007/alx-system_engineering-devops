**SHELL PERMISSION COMMANDS**
This command creates changes the current user : su Betty
This command prints the current users effective name: whoami
This command prints all groups which the current users is part of: groups
This command changes the owner of the file hello to the user betty: chown
This command creates an empty file called hello: touch
This command adds execute permission to the owner of the file hello: chmod u+x
This command adds execute permission to the owner and the group owner, and read permission to other users: chmod u+x,g+x,o+r
This command adds execution permission to the owner, the group owner and the other users,: chmod ugo+x
This command sets the permission to the file hello: chmod 007
This command sets the mode of the file hello to rwxr-x-wx : chmod 753
This command sets the mode of the file hello the same as olleh’s mode: chmod --reference-olleh hello
This command adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users: chmod -R +X
This command creates a directory called my_dir with permissions 751 in the working directory: mkdir -m 751 my_dir
changes the group owner to school for the file hello: chgrp school hello
This command changes the owner to vincent and the group owner to staff for all the files and directories in the working directory: chown vincent:staff *
This command changes the owner and the group owner of _hello to vincent and staff respectively: chown -h vincent:staff _hello
