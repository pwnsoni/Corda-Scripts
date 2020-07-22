#!/bin/bash

printf "Corda MultiNode SetUp with one Notary"



nodenum=$1
notarynum=$2

export noOfNodes=$nodenum
export noOfNotary=$notarynum

echo $noOfNodes
echo $notarynum

printf "Calling docker compose to start the nodes"



j2 doc.j2.yml -o multinode-docker.yaml

docker-compose -f multinode-docker.yaml up -d
