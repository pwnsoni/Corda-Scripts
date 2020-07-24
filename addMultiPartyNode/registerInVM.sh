

$1 --> nodeIp
$2 --> ipOfNMS

./register.sh $ipOfNMS

validating="validating"

if [ $5 == $validating ]
   then
    ./authenticateNotary.sh $ipOfNMS
fi


cd ..

./cordaMultiNodeSetup.sh $3 $4
