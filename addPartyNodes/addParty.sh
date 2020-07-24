
# ./addParty.sh 0.0.0.0 2 L=London,C=GB #ipOfNMS #ipOfDoorman

# $1 ---> 0.0.0.0
# $2 ---> 3,
# $3 ---> L=London,C=GB 
# $4 ---> ipOfNMS
# $5 ---> ipOfDoorman

sudo cp -Rf ../corda.jar .

legalname="O=party""$2",$3
nodeip=$1
partynodescount=$2
ipOfNMS=$4
ipOfDoorman=$5

./multiPartyNode $nodeip $legalname $partynodescount $ipOfNMS $ipOfDoorman

sudo cp -Rf corda.jar ./party$partynodescount

./initialRegistration.sh party$partynodescount $ipOfNMS


./cordaAddPartyNodeSetup.sh $partynodescount








