#./main.sh 0.0.0.0 L=London,C=GB 3 1 validating #ipOfNMS #ipOfDoroman

sudo cp -Rf ../corda.jar .

ipOfNMS=$6
ipOfDoroman=$7

./createMultiPartyNode.sh $1 $2 $3 $4 $5 $6 $7



#./register.sh $ipOfNMS

#validating="validating"

#if [ $5 == $validating ]
#   then
#    ./authenticateNotary.sh $ipOfNMS
#fi


#cd ..

#./cordaMultiNodeSetup.sh $3 $4
