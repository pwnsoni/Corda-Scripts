
git clone https://gitlab.com/cordite/network-map-service.git

sudo apt install maven

mvn clean install -DskipTests

cd target

java -jar network-map-service.jar

