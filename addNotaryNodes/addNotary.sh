
# ./addNotary.sh 0.0.0.0 2 L=London,C=GB validating

# $1 ---> 0.0.0.0
# $2 ---> 3,
# $3 ---> L=London,C=GB 

sudo cp -Rf ../corda.jar .


legalname="O=notary""$2",$3
nodeip=$1
partynodescount=$2

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
       echo "currently you passed " $5
       echo "***** Exitting ***** "
       exit
fi


./multiNotaryNode $nodeip $legalname $partynodescount $validating

sudo cp -Rf corda.jar ./notary$partynodescount

bash initialRegistration.sh notary$partynodescount

mkdir shared

cd shared
mkdir cordapps
cd ..

./cordaAddNotaryNodeSetup.sh $partynodescount








