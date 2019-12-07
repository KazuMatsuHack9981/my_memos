# docker commands cheetsheet




## titles

* list docker images  
* get docker images  
* run docker  
* status of container  
* stop container  
* start container  
* stop container  
* delete docker image  
* my own functions/alias  
* dockerstats  
* reset docker  
* sudo docker rm -f $(sudo docker ps -a -q)  
* sudo docker images -aq | xargs sudo docker rmi  
* dockerbash  
* docker-services  




***



## list docker images
show the list of docker images currently have  
```
docker images
```



***



## get docker images
```
docker pull
```



***



## run docker
start/stop docker services by systemctl
```
sudo systemctl start docker
sudo systemctl stop docker
```
to check whether it's running, type `sudo docker images`  



***


	
## status of container
get status of the container which is you `docker run`  
add option `-a` to show container which is not running.  
```
docker ps
docker-compose ps
```

	

***


	
## stop container
can stop the container which you `docker run`
```
docker stop コンテナID
```



***


	
## start container
can activate container.  
add option `-d`	to activate it in the background  
```
docker-compose up
```



***


	
## stop container
can stop the container which you `docker-compose up`  
if the container is not activated in the background,  
press `Ctrl+c`  
```
docker-compose stop
```



***


	
## delete docker image
delete the docker image forcely.  
can be used for "none" containers.  
```
docker rmi IMAGEID -f
```


	
***
***



# my own functions/alias
the command listed below are the functions/alias  
which I added to the ".bashrc"  
	
	
	
## dockerstats
command included in this function `dockerstats` are listed below.
```
docker images
docker ps
docker-compose ps
```
`sudo` is added to each command.
	


***

	
	
## resetdocker
this will delete all the containers and images.  
VERY DANGEROUS SO DON'T DARE TO MISSTYPE  
```
sudo docker ps -aq | xargs sudo docker rm -f
sudo docker images -aq | xargs sudo docker rmi -f
```




***


	
## sudo docker rm -f $(sudo docker ps -a -q)
delete all the containers.
```
sudo docker rm -f $(sudo docker ps -a -q)
```



***


	
## sudo docker images -aq | xargs sudo docker rmi
delete all the images.
```
sudo docker images -aq | xargs sudo docker rmi
```
	


***	
	
	
	
## dockerbash
alias to enter the bash in the container.  
```
docker exec -it コンテナ名 bash
```
can go out by typing `exit`  
	
	
	
***



## docker-services
show the current status of docker-services.  
```
sudo systemctl list-unit-files | grep docker
```



***



