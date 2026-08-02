#!/bin/bash
# Script to install snyk on an EC2 instance
# Update the package list
sudo apt-get update -y
sudo apt upgrade -y

# Install required packages
sudo apt install -y curl unzip

#nstall Snyk
curl --compressed https://downloads.snyk.io/cli/stable/snyk-linux -o snyk
chmod +x ./snyk
sudo mv ./snyk /usr/local/bin/

#Verify installation
snyk --version
