# docker-basics
Docker notes

## Downloading Docker
```shell
curl -fsSL get.docker.com -o get-docker.sh
```
## Installing Docker
```shell
sudo sh get-docker.sh
```
## Configuring docker permissions
```shell
sudo usermod -aG docker jbalceda
```
## Managing docker demon
```shell
sudo systemctl start docker		# Starts deamon
sudo service docker stop			# Stops deamon
sudo dockerd &					      # Starts deamon
```
## Commands
```shell
docker info				                  # Shows Docker Info (Containers, Images...)
docker version				              # Shows Docker version (API)
docker run hello-world			        # Creates hello-world container
docker images				                # Shows local images
docker ps 		  		                # Shows running containers 
docker ps -a				                # Shows all, even stopped ones
docker ps --no-trunc			          # Shows complete hash id
docker ps --filter="exited=0"		    # Filters result
docker pull ubuntu			            # Pulls ubuntu image from repo Docker Hub
docker run ubuntu echo "Hello World"	# Runs command echo on ubuntu container
docker run -it ubuntu bash		      # Runs container in bash mode	
docker attach [container_name]	    # Connects with container running in the background
docker run --name [linux-test] ubuntu	# Creates a container with a given name
docker start [linex-test]			      # Starts a container
docker run -P -d tomcat			        # Starts a tomcat container in the background
docker rm [container_name_or_id]		# Deletes a container
docker rm ${docker ps -a}		        # Deletes all containers
docker rmi [image_name_or_id]     	# Deletes an image
docker stop [b65d]		              # Stops a container
docker exec -ti [5093] bash	        # Enters a container
docker commit [container_id] [name] 	# Creates a new image
docker commit --change='CMD ["apachectl", "-DFOREGROUND"]' -c "EXPOSE 80" [container_id] apache2 # Start apache automatically
docker run -d -p 5000:80 [apache2]	# Runs image's apache on port 5000
```
## Note 
ctrl + p + q				//Exits a container without stopping it

## Dockerfile
```shell
docker build -t webserver_me /home/jbalceda/vs_code/docker_demo/
docker run -d -p 1000:80 webserver_me
```
