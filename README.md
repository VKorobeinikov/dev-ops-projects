Prefaction 
I am running my Ubuntu machine on a VirtualBox. I am hybrid learning Linux and Docker.

This guide covers setting up your user, creating the project, building the container, and managing its lifecycle. The goal is self-discovery—if you are stuck on a command, use [command] --help or refer to the Docker documentation.
This guide covers setting up your user, creating the project, building the container, and managing its lifecycle.

###### Docker installation and User setup ######

For the a correct Docker installation and setup you can check out the following official link:
https://docs.docker.com/engine/install/ubuntu/ #check always if the link is up to date before proceeding

Once installed, as docker commands require elevation with sudo you can force the execution by adding the user to a group
#add the current user ($USER) to the docker group
sudo usermod -aG docker $USER
#verify that the docker is running correctly (if not troubleshoot)
sudo systemctl status docker

login and logout to apply the updates on the user.

##### Setup a Project dir and create a simple Nginx static web app #####

1. Choose the path for a project directory (in my case /Documents)
2. Create a dir to contain your project artifacts (mkdir - to understand the cmd use the --help)
3. Create a simple html file which will contain the html to expose on the localhost (in this project "index.html")
     - Use of commands: ls, ls -a, touch, nano
4. Create the the Dockerfile -- a dockerfile is a configuration file, in this case we will setup as said an Nginx:alpine and copy in the Dockerfile the index.html
<img width="1920" height="210" alt="image" src="https://github.com/user-attachments/assets/201b2f40-f3a2-49b6-be03-4492e30b26bb" />

##### Build and run the Initial Container (v1.0) #####

1. Build the container using the command docker build -t [tagname]:[version]
2. Check if the container has been created
3. Run the Docker with the command docker run (check the --help for the options)

##### Build and run the Initial Container (v2.0) ######

1. Update for example the index.html with the nano (or also vim)
2. create another build for the container with the correct versioning (v2.0)
3. using the docker ps take the container ID and docker stop [containerid]
4. docker start the new build version and check if works with docker run
5. remove the first version with docker rm [containerid]

##### Clean up ######

1. stop the new container with build v2.0
2. (OPTIONAL) remove the new container v2.0

