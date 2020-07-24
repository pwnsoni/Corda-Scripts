
notaryNameList=(notary*)
partyNameList=(party*)

ipOfNMS=$1


for i in ${notaryNameList[@]}
do
echo $i
cd $i
sudo sed -i  's/p2pAddress="0.0.0.0:10200"/p2pAddress="$nodeIp:10200"/g' node.conf

done


for i in ${partyNameList[@]}
do
echo $i
cd $i
sudo sed -i  's/p2pAddress="0.0.0.0:10200"/p2pAddress="$nodeIp:10200"/g' node.conf

done

