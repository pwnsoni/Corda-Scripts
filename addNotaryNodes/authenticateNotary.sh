TOKEN=`curl -X POST "http://3.133.133.28:8080//admin/api/login" -H  "accept: text/plain" -H  "Content-Type: application/json" -d "{  \"user\": \"sa\",  \"password\": \"admin\"}"`



cd $1

NODEINFO=`ls nodeInfo*`
curl -X POST -H "Authorization: Bearer $TOKEN" -H "accept: text/plain" -H "Content-Type: application/octet-stream" --data-binary @$NODEINFO http://3.133.133.28:8080//admin/api/notaries/validating

cd ..
