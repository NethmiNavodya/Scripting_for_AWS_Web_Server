#!/bin/bash


echo "Copying Log files"
sudo ls

sudo cp /var/log/messages-20210504.gz /home/ec2-user/logs/
sudo cp /var/log/secure-20210504.gz /home/ec2-user/logs/
sudo cp /var/log/yum.log-20210504.gz /home/ec2-user/logs/
sudo cp /var/log/httpd/access_log-20210504.gz /home/ec2-user/logs/
sudo cp /var/log/httpd/error_log-20210504.gz /home/ec2-user/logs/



sudo chmod 777 /home/ec2-user/logs/messages-20210504.gz 
sudo chmod 777 /home/ec2-user/logs/secure-20210504.gz
sudo chmod 777 /home/ec2-user/logs/yum.log-20210504.gz
sudo chmod 777 /home/ec2-user/logs/access_log-20210504.gz
sudo chmod 777 /home/ec2-user/logs/error_log-20210504.gz

sudo tar -zcvf logs.tar.gz logs/






