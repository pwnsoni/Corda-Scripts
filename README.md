# Corda-Scripts	





## Open a new terminal

./start-NMS.sh 

Make sure NMS is up at localhost:8080 before hitting below commands!!!!!




## To convert .sh files to executable

### sudo chmod +x *.sh

## Download Required softwares-

## just hit below command 

### ./installAllDependencies.sh



## Or in Dependencies directory in createNetwork directry (If you want to istall specifics)

### ./java-installation.sh


### ./docker-engine-corda.sh


### ./docker-compose-corda.sh

### ./downLoadNetworkBootStrapper.sh

### ./install-pip3-j2.sh





## You only need to hit the below command with respective arguments.


## addSingleNotaryNode (To create a network with single notary node )

### in addSingleNotaryNode directory 
#### hit below command

### ./addNotary.sh 0.0.0.10 notary L=London,C=GB validating 3.133.133.133 2.1.1.1

### where 

### first argument is Node ip.
### second argument has to be notary.
### third argument is organization name and Locaion, (L=London,C=GB).
### fourth is validating or uniquenes.
### fifth is ip for Networm Map Server (NMS).
### sixth is ip for doorman (can be same or different).

## addSinglePartyNode (To create a network with single party node )

### in addSinglePartyNode directory 
#### hit below command

### ./addParty.sh 0.0.0.10 party L=London,C=GB 3.133.133.133 2.1.1.1

### where 

### first argument is Node ip.
### second argument has to be party.
### third argument is organization name and Locaion, (L=London,C=GB).
### fourth is ip for Networm Map Server (NMS).
### fifth is ip for doorman (can be same or different).













## In createNetwork directory

##(To create network with some parties and notaries)

## ./main.sh 0.0.0.0 L=London,C=GB 3 1 validating

### where 
###   first argumemnt is IP address,  (0.0.0.0)
###   second argument is organization name and Locaion, (L=London,C=GB)
###   third argument is number of party nodes, (3)
###   fourth argument is number of notary nodes, (1)
###   fifth argument is either uniquenes or validating (It will decide this section to be true 	 ###   or false)
###	notary {
###	    validating=true if validating and false if uniqueness
###	}


## To add a node in existing network 

## To add PartyNode

## in addParty directory

### ./addParty.sh 0.0.3.10 2 L=London,C=GB  3.133.133.133 2.1.1.1

### where 

### first argument is ip
### 2nd argument is index of party node (Will update it)  (If you want to create party2) above is the command
### third argument is organization name and Locaion, (L=London,C=GB)
### fourth is ip for Networm Map Server (NMS)
### fifth is ip for doorman (can be same or different)

## To add Notary Node

## in addNotary directory

### ./addNotary.sh 0.0.0.0 2 L=London,C=GB validating #IpOfNMS #IpOfDoorman

### where 

### first argument is ip
### second argument is index of party node (Will update it)  (If you want to create notary2) above is the command
### third argument is organization name and Locaion, (L=London,C=GB)
### fourth is validating or uniquenes
### fifth is ip for Networm Map Server (NMS)
### sixth is ip for doorman (can be same or different)




