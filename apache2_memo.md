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
ブラウザにて、「http://192.168.111.128/」と入力  
※Windowsの方のブラウザでもアクセス可能



***



## ファイル格納場所(file location)
```
http://192.168.111.128/home
```



***



## 設定ファイル(settings file)
```
/var/www/html/
```
このindex.htmlが最初に表示されるやつ。



***



## .bashrcに加えた関数(.bashrc functions)
サーバーにファイルをプッシュ
```
apush ファイル名
```
.bashrc のaliasたちの下にfunctionとして定義してある。
これを使えば、現在のディレクトリ問わずファイルを/var/www/html/home直下に送れる。



***
