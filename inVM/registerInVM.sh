

# $1 --> nodeIp
# $2 --> ipOfNMS
# $3 --> validating or uniqueness (if notary)

nodeIp=$1
ipOfNMS=$2

./updateNodeConf.sh $nodeIp

./register.sh $ipOfNMS

validating="validating"

if [ $3 == $validating ]
   then
    ./authenticateNotary.sh $ipOfNMS
fi




./cordaMultiNodeSetup.sh $3 $4
