#!/bin/bash




# ./cordaMultiNodeSetup.sh $numberofPartyNodes $numberofNotaryNodes 


printf "Corda MultiNode SetUp with one Notary"



notarynum=$1

export noOfNotary=$notarynum


echo $notarynum

printf "Calling docker compose to start the nodes"



j2 doc.j2.yml -o multinode-docker.yaml

docker-compose -f multinode-docker.yaml up -d
