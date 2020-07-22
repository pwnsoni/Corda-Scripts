
# ./addParty.sh 0.0.0.0 2 L=London,C=GB

# $1 ---> 0.0.0.0
# $2 ---> 3,
# $3 ---> L=London,C=GB 

sudo cp -Rf ../corda.jar .

legalname="O=party""$2",$3
nodeip=$1
partynodescount=$2

./multiPartyNode $nodeip $legalname $partynodescount

sudo cp -Rf corda.jar ./party$partynodescount

bash initialRegistration.sh party$partynodescount

mkdir shared

cd shared
mkdir cordapps
cd ..

./cordaAddPartyNodeSetup.sh $partynodescount








