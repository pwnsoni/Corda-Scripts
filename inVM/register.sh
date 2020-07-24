
notaryNameList=(notary*)
partyNameList=(party*)

ipOfNMS=$1


for i in ${notaryNameList[@]}
do
echo $i

./initialRegistration.sh $i $ipOfNMS

done


for i in ${partyNameList[@]}
do
echo $i

./initialRegistration.sh $i $ipOfNMS

done






