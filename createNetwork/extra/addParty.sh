

# $2 ---> 3,
# $3 ---> L=London,C=GB 


legalname="O=party""$2",$3
nodeip=$1
partynodescount=$2
 ./multiPartyNode $nodeip $legalname $partynodescount
sudo cp -Rf corda.jar ./party$i



