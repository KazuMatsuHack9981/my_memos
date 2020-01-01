# linux command memo



## titles

* difference of files  
* patch files  
* find by name  
* open file explorer   
* time of running  
* make fifo queue   
* bash update  
* remove jobs  
* null device  
* redirect  
* remove stdout/stderr/stdin of process  
* use for in command  
* show only designated line  
* grep  
* gzip compression  
* tar compression  
* download from website  
* using api 
* open files  
* apt  
* groups  
* make users  
* change the password  
* add user to group  
* show user status  
* make common directory  
* portscan  
* calender  




***



## difference of files
show difference per line by  
```
diff -u file1 file2
```

show difference of file2 from file1 per word by  
```
cdiff file1 file2
```
note that `cdiff` is an alias.  

show difference per word showing two files by  
```
icdiff file1 file2
```



***



## patch files
first, make a patch file by
```
diff -u beforef afterf > patchf
```
then, apply patch file by
```
patch -u applytof < patchf
```


***



## find by name  
find directory or file under "dir" that includes keyword "word" by  
```
find dir -name "*word*"
```

to seperate from the stderr output, make a file for  
output and tail it by  
```
tail -f outputfile
```
than, redirect find command by  
```
find / -name "*word*" >> outputfile
```
using "/" doesn't take much time.  



***



## open file explorer
open file explorer nautilus on current directory by
```
nautilus . &
```



***



## time of running
you can execute the program and show the time it took by  
```
time ./a.out
```



***



## make fifo queue
prepare 2 or 3 terminal.   
on one terminal, make fifo queue "name" by  
```
mkfifo name
```
than, on other teminal(s), monitor queue "name" by  
(this command return the doubled value of queue)  
```
tail -f name | awk '{print $1 * 2}'
```



***



## bash update
if you edit .bashrc, type below to reload  
```
source .bashrc
```



***



## remove jobs
remove current job from the shell's job table by 
```
disown 
```
options are
```
-a : delete all jobs
-r : only running jobs
```
by doing this, for example even if you launched gedit  
as the background process and deleted the shell, gedit  
will also closed. However, doing this, gedit will last.
note that, sterr/stdout will still be shown.  



***



## null device
```
/dev/null
```
is a special file(device file) which fill delete everything written in  
this directory.  



***



## redirect
```
 >    : redirect stdout (overwrite)
 >>   : redirect stdout (add)
 2>   : redirect stderr (overwrite)
 2>>  : redirect stderr (add)
```
you can redirect both stdout and stderr by
```
command > file 2>&1
```



***



## remove stdout/stderr/stdin of process
use redirect toward null device by
```
command > /dev/null 2>&1 < /dev/null &
```



***



## use for in command
```
for i in `seq from to`; do command($i); done
ex) for i in `seq 1 3`; do echo $i; done
```



***



## show only designated line
to show only the line 10 of the "file"
```
sed -n 10p file
```
to show from line 10 to line 20
```
sed -n 10,20p file
```



***



## grep 
you can grep with the name of file that the keyword  
was in by
```
cat * | grep -rin "keyword"
```



***



## gzip compression
to compress to ".gz" file, 
```
gzip filename
```
to decompress add option as,
```
gzip -d filename
```



***



## tar compression
to compress, type
```
tar cvf filename.tar filepath
```
to decompress, type  
```
tar xvf filepath
```
note that tar options can omit `-`



***



## download from website
```
curl [option] url
```
"url" doesn't need quotation.  
use `-o` options to save as as file.  
or you can use 
```
wget url
```
to download files from the website.  



***



## using api
you can use `curl` command to use api.  
Also, you can install `jq` command to format json file  
which will be returned.  


### show http header
```
curl -I URL
```
you can use `-i` to also show the feedback of api.  
use `-v` to also show the request's header.  


### post
```
curl -X POST URL -d "parameter=value"
```



***



## open files
open files by a defaut application
```
xdg-open (filename)
```



***



## apt
install applications
```
sudo apt instal name
```
  
uninstall applications and delete settings files too
```
sudo apt purge name
```



***



## groups
All users are in some kinds of group  
  
list all groups you are in
```
groups
```
  
show a group which a user "name" are in
```
groups name
```



***



## make users
add the users named "name"
```
adduser name
```



***

  

## change the password
change the password of the user "name"
```
passwd name
```



***



## add user to group
add the user named "user" to a group "group"
```
usermod -aG group user
```



***



## show user status
show anything about users named "user"  
for example, what groups is the user in
```
id user
```



***



## make common directory
make "directory" a common directory in the same group "group"
```
chgrp -R group directory
```

then, you might have to change authority by,
```
chmod -R 770 directory : ↑の次にこれをやる。
```



***




## portscan
portscan your own local computer
```
nmap localhost
```



***



## calender
show calender by
```
cal
```



***



