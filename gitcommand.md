# Github Command



## titles

* make local repository  
* make remote repository  
* copy repostiory from remote  
* list of remote repository  
* add file  
* commit  
* push  
* basic flow   
* pull  
* status of local repository  
* make branch  
* make remote branch  
* list of branch  
* change branch  
* delete remote branch  
* delete local branch  
* merge branch  




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
you can get the url from the GUI github where you made the remote repository.
after this, make sure to ,
```
git add .
git commit -m ""
git push name master
```



***



## copy repository from remote
make copy of the remote repository "rem" to  
the directory "dir" by
```
git clone rem dir
```
"rem" can be described as
```
url
git:url
ssh:url
```



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



## make remote branch
push the local branch "name" to remote by
```
git push -u origin name
```



***



## list of branch
show a list of local branch already exists
```
git branch
```
show a list of remote branch by
```
git branch --remote
```
show all the remote and local branch by
```
git branch --all
```



***



## change branch
change the current branch to the branch you selected at name below
```
git checkout name
```



***



## delete remote branch
delete the remote branch "branch" by
```
git push --delete origin branch
```



***



## delete local branch
delete local branch "branch" by
```
git branch --delete branch
```

to delete the branch forcely,
```
git branch -D branch
```



***



## merge branch
merge other branch "other" to the current  
(where HEAD indicates) branch by
```
git merge other
```
if two branch updated the same place in different way,   
it will conflict. To avoid this, edit one branch by hand  
or you can precede current branch by,
```
git checkout --ours filename
```
precede other branch by
```
git checkout --theirs filename
```
then, do add and commit at last and make merge commit.



***



