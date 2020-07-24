
# ./addParty.sh 0.0.0.0 party L=London,C=GB #ipOfNMS #ipOfDoorman

# $1 ---> 0.0.0.0
# $2 ---> 3,
# $3 ---> L=London,C=GB 
# $4 ---> ipOfNMS
# $5 ---> ipOfDoorman

sudo cp -Rf ../corda.jar .

legalname="O=$20",$3
nodeip=$1
partynodescount=0
ipOfNMS=$4
ipOfDoorman=$5

./multiPartyNode $nodeip $legalname $partynodescount $ipOfNMS $ipOfDoorman

sudo cp -Rf corda.jar ./party$partynodescount

bash initialRegistration.sh party$partynodescount $ipOfNMS

mkdir shared

cd shared
mkdir cordapps
cd ..

./cordaAddPartyNodeSetup.sh $partynodescount








