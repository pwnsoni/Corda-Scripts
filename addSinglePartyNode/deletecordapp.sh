#!/bin/bash
cordappname=$1
ALL=all
if [ $# -eq 0 ]
  then
    echo "You have not entered any cordapp name"
        exit 1
fi
cd shared/cordapps/
if [ "$cordappname" == "$ALL" ]; then
rm -Rf *.jar
else
rm -Rf $cordappname.jar
fi
docker restart $(docker ps -q)
echo "************  Removed $cordappname jar  *************"  
./deletecordapp.sh all  
./deletecordapp.sh yo-contracts-0.1 n

