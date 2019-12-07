# vsftpd usage



## title-list

 * activation
 * stop
 * setting file
 * show status
 * check ports




***



## activation
start vsftpd service.
```
service vsftpd start
```



***



## stop
stop vsftpd service.
```
service vsftpd stop
```



***



## setting file
settings file location is below
```
/etc/vsftpd.conf
```



***



## show status
show status of vsftpd service.  
if "Active" is green, you can use this service. 
```
service vsftpd status
```



***



## check ports
if "21" is open, the you can use this service.  
```
nmap localhost
```



***



