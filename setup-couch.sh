#!/bin/sh

HOST=http://127.0.0.1:5984

#verify
curl $HOST

#enable cors
curl -X PUT $HOST/_config/httpd/enable_cors -d '"true"'
curl -X PUT $HOST/_config/cors/origins -d '"*"'
curl -X PUT $HOST/_config/cors/credentials -d '"true"'
curl -X PUT $HOST/_config/cors/methods -d '"GET, PUT, POST, HEAD, DELETE"'
curl -X PUT $HOST/_config/cors/headers -d '"accept, authorization, content-type, origin, referer, x-csrf-token"'

#open access from outside, cloud9 forwards port 80 to 8080
curl -X PUT $HOST/_config/httpd/bind_address -d '"0.0.0.0"'
curl -X PUT $HOST/_config/httpd/port -d '"8080"'

#verify
curl couchdb-demo-ranf.c9.io
