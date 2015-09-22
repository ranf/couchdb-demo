#!/bin/bash

#You can access futon, couchdb administration ui, at http://<worksapce>-<username>.c9.io/_utils

#create a database named todos
curl -X PUT 'http://127.0.0.1:8080/todos'

#put a new todo document in the todos database
curl -X PUT 'http://127.0.0.1:8080/todos/2015-09-19T19%3A24%3A12.651Z' -H 'Content-Type: application/json' -d '{"_id":"2015-09-19T19:24:12.651Z","title":"todo!!!1","completed":false}'
#to update a document we need its _rev, take it from previous server response, otherwise you will get 409 response
curl -X PUT 'http://127.0.0.1:8080/todos/2015-09-19T19%3A24%3A12.651Z'  -H 'Content-Type: application/json' -d '{"_id":"2015-09-19T19:24:12.651Z","title":"todo!!!2","completed":true,"_rev":"put_rev_here"}'
#getting a document is obviously
curl -X GET 'http://127.0.0.1:8080/todos/2015-09-19T19%3A24%3A12.651Z'
#and deleting (like update, will require latest rev)
curl -X DELETE 'http://127.0.0.1:8080/todos/2015-09-19T19%3A24%3A12.651Z?rev=put_rev_here'

#getting all documents in the database. notable parameters are include_docs and startkey/endkey/limit/skip
curl -X GET 'http://127.0.0.1:8080/todos/_all_docs'

#create design document with some map-reduce views
curl -X PUT 'http://127.0.0.1:8080/todos/_design/ddoc' -d @ddoc.json

#execute the views
curl 'http://127.0.0.1:8080/todos/_design/ddoc/_view/completed?include_docs=true'
curl 'http://127.0.0.1:8080/todos/_design/ddoc/_view/completed_count'