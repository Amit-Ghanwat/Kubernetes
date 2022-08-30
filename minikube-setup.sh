!/bin/bash
#install Docker using convenience script
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

#install Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo instiall minikube-linux-amd64 /usr/local/bin/minikube

#make yourself the owner of docker.sock
sudo chown $USER /var/run/docker.sock

#start minikube, create a node
minikube start --force

#create a alias Kubectl
echo 'alias kubectl="minikube kubectl --"' >> .bashrc
