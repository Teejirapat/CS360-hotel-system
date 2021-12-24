#!/bin/bash
sudo yum -y update

sudo yum install git
sudo yum install python3
pip3 install flask pymongo requests bcrypt gevent WSGIServer qrcode libscrc
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo gpasswd -a ec2-user docker
newgrp docker

docker run -dp 3000:3000 6209650651/calc-image

