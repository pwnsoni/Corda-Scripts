#!/bin/bash




# ./cordaMultiNodeSetup.sh $numberofPartyNodes $numberofNotaryNodes 


printf "Corda MultiNode SetUp with one Notary"



nodenum=$1
notarynum=$2
uniqueNess=$3

export noOfNodes=$nodenum
export noOfNotary=$notarynum
export uniqueNess=$uniqueNess

echo $noOfNodes
echo $notarynum
echo $uniqueNess

printf "Calling docker compose to start the nodes"



j2 doc.j2.yml -o multinode-docker.yaml

docker-compose -f multinode-docker.yaml up -d
