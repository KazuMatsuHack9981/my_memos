# docker commands cheetsheet




## titles

* Docker
	* version of docker
	* list docker images
	* search docker images
	* get docker images
	* run docker engine
	* status of container
	* stop container
	* start container
		* run with labeling
		* run and go inside container
		* run as daemon process
		* run container only once
		* run container giving env variable
		* run overwriting entrypoint
	* restart container
	* rename and put tag  
	* rename container
	* use systemctl inside container (loop)
	* use command outside the container
	* make docker image (from existing container)
	* get into the container
	* stop container
	* delete container
	* delete docker image
	* port mapping
	* volume mapping (mount)
	* copy files between container
* Dockerfile
	* About Dockerfile
	* EXPOSE
	* ENTRYPOINT
	* ADD
	* make docker image from Dockerfile
	* Dockerfile sample of httpd in centos
* Docker Compose
	* About Docker Compose
	* Docker Compose sample of PHP and mysql
	* activate docker compose
	* stop docker compose
	* get into the container by docker compose
* my own functions/alias
	* ds
	* resetdocker
	* sudo docker rm -f $(sudo docker ps -a -q)
	* sudo docker images -aq | xargs sudo docker rmi
	* dockerbash
	* docker-services
* Docker Hub
	* login/logout to docker hub
	* make remote repository
	* push image to docker hub
* Making Container From Existing Image
* Add Colors and Vim to Container



***



# Docker

## version of docker
show the version of docker by
```
docker version
docker-compose version
```



***



## list docker images
show the list of docker images currently have  
```
docker images
```



***



## search docker images
search docker images "name" that's on docker hub
```
docker search name
```



***



## get docker images
get docker images from the repository of docker hub by
```
docker pull
```



***



## run docker engine
start/stop docker services(docker engine) by systemctl
```
sudo systemctl start docker
sudo systemctl stop docker
```
to check whether it's running, type `sudo docker images`  



***


	
## status of container
get status of the container which you `docker run`  
add option `-a` to show container which is not running.  
```
docker ps
docker-compose ps
```

	

***


	
## stop container
can stop the container which you `docker run`
```
docker stop id
```



***



	
## start container
activate the container of the image "image"
```
docker run image
```
if you don't have that image, it will be  
downloaded from docker hub.   
note that "image" is written as "REPOSITORY:TAG".   


### run with labeling
label the container id and run by
```
docker run --name label image
```
labels are shown in "NAMES" when `docker ps`


### run and go inside container
run and get into the container   
```
docker run -it image
```


### run as daemon process
use option `-d` to run as a daemon process.  
to activate container as a daemon and activate httpd on  
a foreground inside a container, 
```
docker run -d image /usr/sbin/httpd -DFOREGROUND
```


### run container only once
you can run the container from the image and delete  
the container when you exit by giving `--rm`  
```
docker run -it --rm image
```


### run container giving env variable
some containers requires environment variable when activating.  
for example, "mysql" needs ROOT PASSWORD when activating.  
```
docker run -d --env MYSQL_ROOT_PASSWORD=passwd mysql:5.7
```


### run overwriting entrypoint
to run container with overwriting the entrypoint,
```
docker run --entrypoint "bash" image
```



***



## restart container
restart the container which has the id "id"
```
docker restart id
```



***



## rename or put tag
change the name of the repository and tag by
```
docker tag id REPOSITORY:TAG
```



***



## rename container
```
d rename [oldname] [newname]
```



***



## use systemctl inside container (loop)
inside the container, you can't control process over "/bin/bash".   
for example to activate httpd, do  
```
/usr/sbin/httpd -DFOREGROUND
```
since daemon process keeps running and wait for the request,  
and activating this on the foreground, this will loop.  



***



## use command outside the container
outside the container, you can send command "command"  
inside the container which has id "id" by
```
docker exec id command
```



***



## make docker image (from existing container)
when you installed some thing inside the container and  
you want to make an image named "image" of it, 
```
docker commit id name
```
this will only be saved in local.



***



## get into the container
get into the container which has the id "id"
```
docker attach id
```
you can also run bash outside the container by `exec` and  
also get into the container by `-it` to get in by  
```
docker exec -it id /bin/bash
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



## delete container
delete the container which has id "id" by
```
docker rm id
```



***



## delete docker image
delete the docker image forcely.  
can be used for "none" containers.  
```
docker rmi IMAGEID -f
```



***



## port mapping
when you want to combine(map) container's 80 port  
to the host's 8080 port and run a container, use `-p`  
```
docker run -d -p 8080:80 image /usr/sbin/httpd -DFOREGROUND
```



***



## volume mapping (mount)
when you want to combine(map, mount) the host's file system  
to the container file system, use `-v`  
```
docker run -d -v [host directory abs path]:[container abs path] image command
```



***



## copy files between container 

### CONTAINER ==> HOST
```
docker cp [container_id]:[container_path] [host_path]
```

### HOST ==> CONTAINER
```
docker cp [host_path] [container_id]:[container_path]
```





***
***





# Dockerfile



## About Dockerfile
Dockerfile is a file which makes the Docker Image in the concept  
of "Infrastructure as Code".



***



## EXPOSE
indicate the port which you open to the public
```
EXPOSE port
```


***



## ENTRYPOINT
set the default command to activate when you docker run
```
ENTRYPOINT ["command1", "command2/argument"]
```



***



## ADD
include the host file into the image by
```
ADD [host path] [container path]
```



***



## make docker image from Dockerfile
build docker image "name" from the Dockerfile on the current  
directory by
```
docker build . -t name
```



***



## Dockerfile sample of httpd in centos
```
FROM centos

RUN yum update -y \
    && yum install httpd -y \
    && echo "hello world from dockerfile" > /var/www/html/index2.html \
    && yum clean all

ADD ./httpd/www/index.html /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
```






***
***







# Docker Compose




## About Docker Compose
docker-compose.yml writes the structure of one application consisted of  
multiple containers.



***



## Docker Compose sample of PHP and mysql
```
version: "2"
services:
  mysql:
    image: mysql:5.7
    ports:
      - "3306:3306"
    volumes:
      - "./mysql/init:/docker-entrypoint-initdb.d"
      - "./mysql/data:/var/lib/mysql"
    environment:
      - MYSQL_ROOT_PASSWORD=secret
  phpapp:
    image: phpapp
    build: ./build/phpapp
    volumes:
      - "./app:/var/www/html"
    ports:
      - "8080:80"
```



***



## activate docker compose
you can run one application that's consisted of multiple  
containers by executing commands below at the directory  
where docker-compose.yml is
```
docker-compose up -d
```



***



## stop docker compose
you can stop the application that's consisted of multiple  
containers by 
```
docker-compose down
```



***



## get into the container by docker compose
you can get into the container named "name"
```
docker-compose exec name /bin/bash
```





***
***






# my own functions/alias
the command listed below are the functions/alias  
which I added to the ".bashrc"  
	
	
	
## ds
command included in this function `ds` are listed below.
```
docker images
docker ps -a
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
function to enter the bash in the container.  
```
docker exec -it $1 bash
```
use this by 
```
dockerbash container_id_or_name
```
can go out by typing `exit`  
	
	
	
***



## dockertest
function to make a test container by
```
sudo docker run -it --name test --entrypoint bash $1
```
use this by
```
dockertest image:tag
```



***



## docker-services
show the current status of docker-services.  
```
sudo systemctl list-unit-files | grep docker
```






***
***





# Docker Hub



## login/logout to docker hub
```
docker login
docker logout
```



***



## make remote repository
repository will be made when you push the image.  



***



## push image to docker hub
first, login to docker and tag the image you want to push
```
docker tag id username/repositoryname:tag
```
note that tags are mostly "latest".  

then, push it by
```
docker push username/repositoryname:tag
```






***
***





# Making Container From Existing Image

## 1. Make Directory of App
First, make a directory of the app you want to make a container and  
use `cd` to move in.  Remember to make sure that no container's status  
is up.


## 2. Copy docker-compose.yml from other container
Remember to add `sudo`.


## 3. Create Gemfile/Gemfile.lock
First, make **empty** file "Gemfile.lock" by
```
touch Gemfile.lock
```
Then, make "Gemfile" too and write
```
source 'https://rubygems.org'
gem 'rails', '5.2.2'
```
in the "Gemfile".



## 4. Edit docker-compose.yml
Now, edit "docker-compose.yml". In the source code  
where it says "web:", you don't have to build new container so  
if there were `build .`, delete it and add `image: imagename`.  
Make sure that "imagename" should be the name of the image you want to  
use.


## 5. Rails new
Then, don't forget to do
```
docker-compose run web rails new . --force --database=mysql --skip-bundle
```
note that you **DON'T** have to get into the container and type command  
such as bundle install.  


## 6. Edit database.yml
After that, **delete everything that's written in database.yml** and write
```
default: &default
   adapter: mysql2
   encoding: utf8
   pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
   username: root
   password: password # docker-compose.ymlのMYSQL_ROOT_PASSWORD
   host: db # docker-compose.ymlのservice名

development:
   <<: *default
   database: myapp_development

test:
   <<: *default
   database: myapp_test
```
in them.  
note that this is a bit different from [this article](https://qiita.com/azul915/items/5b7063cbc80192343fc0)


## 7. Activate Docker
Finally, go to the directory you made in "1." and type
```
docker-compose build
```
this may not be necessary but if you do this, the stdout will   
be something like "it already exists so skipped".  

Then, do
```
docker-compose up
```
and if both the web and db are up, it is your victory!



## 8. Create DB
If you want to make an database, then do
```
docker-compose run web rails db:create
```






***
***





## Add Colors and Vim to Container
There are "~/container/customfile" to edit bashrc, vimrc,  
colorscheme for vim, vimscript for templates of html.  

Once you made the container, copy this to that container by
```
docker cp customfile container_id:/app_name
```

Then, get into the container, and got to the customfile directory.  
Give execution authority to "rename.sh" by  
```
chmod +x rename.sh
```

Then, execute it by  
```
./rename.sh
```

Done.



***



