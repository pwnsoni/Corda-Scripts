docker run -ti \
        --memory=2048m \
        --cpus=2 \
        -v /home/pawan/Corda/Corda-Scripts/addPartyNodes/party2:/etc/corda \
        -v /home/pawan/Corda/Corda-Scripts/addPartyNodes/party2/certificates:/opt/corda/certificates \
        -v /home/pawan/Corda/Corda-Scripts/addPartyNodes/party2/persistence:/opt/corda/persistence \
        -v /home/pawan/Corda/Corda-Scripts/addPartyNodes/party2/cordapps:/opt/corda/cordapps \
        -p 10200:10200 \
        -p 10201:10201 \
        corda/corda-zulu-java1.8-4.4:latest
