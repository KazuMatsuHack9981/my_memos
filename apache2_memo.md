# apache2の使い方


## apache2の起動(activate)
start apache2 service by systemctl command
```
systemctl start apache2
```



***



## 停止(stop)
halt apache2 service by systemctl command
```
systemctl stop apache2
```



***



## 状況確認(check status)
check status of apache2
```
systemctl status apache2
```



***



## ファイルアクセス(file access)
enter below in your browser
```
http://192.168.111.128/
```
※you can access here from Windows too



***



## ファイル格納場所(file location)
```
http://192.168.111.128/home
```



***



## 設定ファイル(settings file)
index.html is the first file shows when accessed
```
/var/www/html/
```



***



## .bashrcに加えた関数(.bashrc functions)
push the file to server
```
apush (filenames)
```
this is defined in the .bashrc as a function
using this, you can send files under /var/www/html/home from any directory



***
