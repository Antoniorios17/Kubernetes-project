#!/bin/bash

#update the system and packages with super user priviledges
sudo apt update

#install the dependencies for running jenkins
#install java 
sudo apt -y install openjdk-11-jre

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

#Update the system to reflect the changes in the packages
sudo apt-get update

#Install jenkins in the operating system
sudo apt-get -y install jenkins

#Start jenkins on the system
sudo systemctl start jenkins

#Install python virtual environment on the system for running flask
sudo apt install python3.10-venv

#Verify the status of Jenkins by adding it to a new file in the home directory
systemctl status jenkins >> ~/file.txt
