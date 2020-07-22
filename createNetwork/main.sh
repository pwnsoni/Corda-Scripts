#./main.sh 0.0.0.0 L=London,C=GB 1 1 validating

sudo cp -Rf ../corda.jar .

./createMultiPartyNode.sh $1 $2 $3 $4 $5

bash register.sh


bash authenticateNotary.sh

cd notary0

sudo rm  network-parameters 

#gnome-terminal --tab  --command="bash -c ' java -jar corda.jar; '"

cd ..

./cordaMultiNodeSetup.sh $3 $4
