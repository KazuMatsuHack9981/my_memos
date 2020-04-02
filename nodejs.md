# Nodejs



## titles
* about node.js
* install
* npm
	- installing packages
	- searching packages
	- check latest version
	- uninstalls packages
* version management
	- list of available node.js version
	- install version
	- use version
* using module



***



## about node.js
Made for server side task control. Has feature that enables us to deal with  
tons of accesses fast.



***



## install
```
apt install nodejs
apt install npm
```



***



## npm
node.js uses "package" and for managing these packages, npm is used.

### installing packages
```
npm install [package]
```

### searching packages
```
npm search [package]
```

### check latest version
check latest version of the packages you currently have by
```
npm outdated
```

### uninstalls packages
```
npm un [package]
```



***



## version management
node.js version changes very frequently. In order to manages  
versions of node.js, use "NVM".

### list of available node.js version
```
nvm ls-remote
```

### install version
```
nvm install v9.3.0
```

### use version
```
nvm use v9.3.0
```



***



## using module
For example, use "express" module by `require`  
First, install it by
```
npm install express
```
then in node.js
```
var express = require('express');
```
note that "express" is one of the web application framework.



***



