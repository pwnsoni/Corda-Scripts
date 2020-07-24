#!/bin/bash




# ./cordaMultiNodeSetup.sh $numberofPartyNodes $numberofNotaryNodes 


printf "Corda MultiNode SetUp with Party"



nodenum=$1

export noOfNodes=$nodenum

echo $noOfNodes

printf "Calling docker compose to start the nodes"


if [ $nodenum -ge 3 ]; 

then
j2 doc.j3.yml -o multinode-docker.yaml

else 
j2 doc.j2.yml -o multinode-docker.yaml


fi


docker-compose -f multinode-docker.yaml up -d
