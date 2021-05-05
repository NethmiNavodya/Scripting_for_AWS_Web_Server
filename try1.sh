#!/bin/bash

servstat=$(systemctl status httpd.service)

if [[ $servstat == *"active (running)"* ]]; then
  echo "process is running"
else 
 echo "process is restarting"
 $(sudo systemctl restart httpd.service)
 servstat=$(systemctl status httpd.service)
 if [[ $servstat == *"active (running)"* ]]; then
  echo "process is running"
 fi
fi




