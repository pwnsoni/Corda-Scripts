#!/bin/bash
echo "==========    Creating Party Node   =================="
dir=$pwd
for ((i=0; i<$3; i++));
do
legalname="O=party""$i",$2
nodeip=$1
partynodescount=$i
 ./multiPartyNode $nodeip $legalname $partynodescount
sudo cp -Rf corda.jar ./party$i
done

echo "==========    Creating Notary Node   =================="
for ((i=0; i<$4; i++));
do
legalname="O=notary""$i",$2
nodeip=$1
partynodescount=$i
validating="validating"
uniqueness="uniqueness"
flag=true
flag1=true


if [ $5 == $validating ]
   then

       validating=true
       flag=false
fi

if [ $5 == $uniqueness ]
   then
       validating=false
	flag=false
fi

if [ $flag == $flag1 ]
   then
       echo "*** Fifth Argument should be either uniqueness or validating only **** " 
       echo "currently you passed " $5
       echo "***** Exitting ***** "
       exit
fi


 ./multiNotaryNode $nodeip $legalname $partynodescount $validating
sudo cp  corda.jar ./notary$partynodescount
done

