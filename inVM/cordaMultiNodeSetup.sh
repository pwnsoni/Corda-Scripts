#!/bin/bash

printf "Corda MultiNode SetUp with one Notary"



nodename=$1
notarynum=$2

export nodename=$nodename
export noOfNotary=$notarynum

echo $nodename
echo $notarynum

printf "Calling docker compose to start the nodes"



j2 doc.j2.notary.yml -o multinode-docker.yaml

#docker-compose -f multinode-docker.yaml up -d
