
# ./addNotary.sh 0.0.0.0 2 L=London,C=GB validating #IpOfNMS #IpOfDoorman

# $1 ---> 0.0.0.0
# $2 ---> 3,
# $3 ---> L=London,C=GB 

sudo cp -Rf ../corda.jar .


legalname="O=notary""$2",$3
nodeip=$1
partynodescount=$2
ipOfNMS=$5
ipOfDoorman=$6

validating="validating"
uniqueness="uniqueness"
flag=true
flag1=true


if [ $4 == $validating ]
   then

       validating=true
       flag=false
fi

if [ $4 == $uniqueness ]
   then
       validating=false
	flag=false
fi

if [ $flag == $flag1 ]
   then
       echo "*** Fourth Argument should be either uniqueness or validating only **** " 
       echo "currently you passed " $4
       echo "***** Exitting ***** "
       exit
fi


 ./multiNotaryNode $nodeip $legalname $partynodescount $validating $ipOfNMS $ipOfDoorman

sudo cp -Rf corda.jar ./notary$partynodescount

./initialRegistration.sh notary$partynodescount $validating $ipOfNMS

mkdir shared

cd shared
mkdir cordapps
cd ..

./cordaAddNotaryNodeSetup.sh $partynodescount








