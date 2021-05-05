#!/bin/bash


scp -i /home/neth/Desktop/web-server.pem ec2-user@ec2-65-2-127-159.ap-south-1.compute.amazonaws.com:/home/neth/Desktop/aws/custom.sh/ /home/ec2-user/etc/logrotate.d/


sudo logrotate -f /etc/logrotate.conf



