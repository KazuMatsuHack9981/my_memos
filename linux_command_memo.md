# linux command memo



## titles

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




