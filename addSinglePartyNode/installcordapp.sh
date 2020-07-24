#./installcordapp.sh 1
#!/bin/bash
cd cordapps
if [ $# -eq 0 ]
  then
    echo "You have not entered any cordapp name"
        exit 1
fi
cp -Rf *.jar ../shared/cordapps/
docker restart $(docker ps -q)
#rm -Rf *
