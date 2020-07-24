#!/bin/bash




# ./cordaMultiNodeSetup.sh $numberofPartyNodes $numberofNotaryNodes 


printf "Corda MultiNode SetUp with one Notary"



notarynum=$1

export noOfNotary=$notarynum


echo $notarynum

printf "Calling docker compose to start the nodes"


if [ $notarynum -ge 3 ]; 

then
j2 doc.j3.yml -o multinode-docker.yaml

else 
j2 doc.j2.yml -o multinode-docker.yaml


fi



j2 doc.j2.yml -o multinode-docker.yaml

docker-compose -f multinode-docker.yaml up -d
