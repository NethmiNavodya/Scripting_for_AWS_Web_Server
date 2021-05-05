#!/bin/bash

cd github/log_file
git pull
cp ../../logs.tar.gz .
git add .
git commit -m "Update repo"
#git push origin

#if [[ "$(git push --porcelain)" == *"Done"* ]]
if git push origin
then
  echo "git push was successful!"
  rm ../../logs.tar.gz
else
  echo echo "git push was not successful!" | mail -s "Git Push Error" TTOSLTechApp@lseg.com
fi
