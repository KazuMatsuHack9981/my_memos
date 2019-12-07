# Github Command



## titles

* make local repository  
* make remote repository  
* list of remote repository  
* add file  
* commit  
* push  
* basic flow   
* pull  
* status of local repository  
* make branch  
* list of branch  
* change branch  




***



## make local repository
in the directory where you want to make it the local repository,
```
git init
```



***



## make remote repository
first, make a remote repostiory on GUI github  
then you have to connect it with the local repostiory
```
git remote add (name) (url)
```
name is often origin  
you can get the url from the GUI github where you made the remote repository



***



## list of remote repository
in the local repository's directory,  
```
git remote -v
```
the result will be the name of remote repository connected to the current local repository



***



## add file
select the file you want to push
```
git add (filename)
```



***



## commit
in order to push files correctly, files are sent on a trial basis.  
however, at this point, files are not pushed to the remote repository
```
git commit -m "message"
```



***



## push
name is the name of remote repository  
```
git push name branch
```



***



## basic flow
```
git add -
git commit -m - 
git push - -
```



***



## pull
name is the name of remote repository
```
git pull name branch
```



***



## status of local repository
can check the current status of the files you add or commit
```
git status
```



***



## make branch
name is the name of branch you want to make
```
git branch name
```



***



## list of branch
show a list of branch already exists
```
git branch
```



***



## change branch
change the current branch to the branch you selected at name below
```
git checkout name
```



***


 
