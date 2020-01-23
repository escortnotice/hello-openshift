# Getting Started

# HTTP GET:: URLS

http://localhost:8080/hello

http://localhost:8080/

http://localhost:8080/health

# Docker Commands

1) > docker build -f Dockerfile -t escortnotice/hello-openshift:v1.0 .

-f is for the docker file name

-t is the image tag name that will be build

. (DOT) represents the current directory where the project is present.

The above command will create a docker image.The docker image name should always 
be in lower case. This command should be run in the folder where the "Dockerfile" exists.

2) > docker run --name hello-openshift-app -p 8080:8080 escortnotice/hello-openshift:v1.0

--name is used to give the name of the container

-p is for port(container:hostmachine) forwarding from the container to the host machine where the container runs 

Then give the name of the image:<version of the image> from which you want to create the 
container.

3) > now run the url in the browser "http://localhost:8080/hello"

More Commands: 
docker images ls (to list all images)  
docker image rm <image-name>  (to delete the image)  
docker container ls  (to check all containers running or stopped)  
docker container ls --all (to check running containers)  
docker container stop <container-name>  (to stop running containers)  
docker container logs --tail 100 <container-name> (print last 100 lines of a container's log)  
docker container rm <container-name> (delete a stopped container)  
docker container rm -f $(docker ps -aq)    {delete all stopped and running containers}  
docker tag <old-image-name> <new-image-name>  (to retag an image)  
docker push <image-name> (push an image to repository) ex: docker push escortnotice/hello-openshift:v1.0  
docker pull <image-name>  