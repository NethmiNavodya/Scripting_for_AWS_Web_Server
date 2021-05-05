#!/bin/bash

response=$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' ec2-65-2-127-159.ap-south-1.compute.amazonaws.com)

if [ $response == "200" ];
then
  echo "Server is serving the content!"
  curl 65.2.127.159
  curl -s -I 65.2.127.159 | grep -e HTTP -e Date > nethmi1.txt

else
  echo echo "Server is not serving the content" | mail -s "Server Error" TTOSLTechApp@lseg.com
fi

