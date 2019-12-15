# linux command memo



## titles

* patch files  
* open file explorer   
* show only designated line  
* grep  
* gzip compression  
* tar compression  
* download from website  
* open files  
* apt  
* groups  
* make users  
* change the password  
* add user to group  
* show user status  
* make common directory  
* portscan  




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



## open file explorer
open file explorer nautilus on current directory by
```
nautilus . &
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



