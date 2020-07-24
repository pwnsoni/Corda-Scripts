TOKEN=`curl -X POST "http://localhost:8080/admin/api/login" -H  "accept: text/plain" -H  "Content-Type: application/json" -d "{  \"user\": \"sa\",  \"password\": \"admin\"}"`



curl -X DELETE -H "Authorization: Bearer $TOKEN" http://localhost:8080/admin/api/nodes/
