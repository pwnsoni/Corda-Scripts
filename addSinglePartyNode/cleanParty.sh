echo  "======Clean Up for Party Node ================"

sudo rm -Rf party* notary* checkpoints_agent* diagnostic-ip* node-ip*
 sudo docker rm -f $(docker ps -aq)
 sudo docker network prune -f






