
notaryNameList=(notary*)
partyNameList=(party*)


for i in ${notaryNameList[@]}
do
echo $i

bash initialRegistration.sh $i

done


for i in ${partyNameList[@]}
do
echo $i

bash initialRegistration.sh $i

done


mkdir shared
cd shared
mkdir cordapps
cd ..




