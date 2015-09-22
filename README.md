
# Agenda


### Document-oriented Databases (10-15 minutes)
* Video placeholder
* Discussion - RDBMS/Key-Value/Document, MongoDB/CouchDB.
* You can start with setting up the workspace if you get bored.


### Workspace setup (5 minutes)
1. Go to https://c9.io/. sign-up/sign-in (possibly using github).
2. Create new workspace.Enter a name, clone this repository ( git@github.com:ranf/couchdb-demo.git ), and chose the Custom template.
3. Run start-couch.sh (you should see couchdb logs written into this terminal), and then setup-couch.sh.


### CouchDB REST Demo (10-20 minutes)
* Follow demo.sh to create a database, documents and views (simple map-reduce).
* API documentation - http://docs.couchdb.org/en/1.6.1/api/index.html


### Distributed Database systems (10-20 minutes)
* Video - probably CAP-Theorem.
* Discussion - RDBMS/MongoDB/CouchDB.


### PouchDB and CouchDB Replication (10-20 minutes)
* Place your hostname in pouchdb/app.js. Open index.html - Preview + Pop Out
* Inspecting the application - Network requests (uses the replication API, long-polling), IndexedDB.
* Using Futon for replication.
* Query our view from the web application.
