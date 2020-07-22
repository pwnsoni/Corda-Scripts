partyNameList=(party*)


for i in ${partyNameList[@]}
do
echo $i
cd $i

gnome-terminal --tab  --command="bash -c ' java -jar corda.jar; '"

cd ..
done
