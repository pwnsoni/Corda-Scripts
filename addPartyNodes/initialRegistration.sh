
cd $1



mkdir certificates

echo "retrieving networ-root-truststore file from NMS"

curl http://3.133.133.28:8080/network-map/truststore -o ./certificates/network-root-truststore.jks

echo "Initial registration of the node "

java -jar corda.jar initial-registration  --network-root-truststore-password trustpass

sudo rm ./certificates/network-root-truststore.jks

cd ..
