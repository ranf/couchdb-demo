
# Agenda


### Document-oriented Databases (15-20 minutes)
* Quick explanation of relational databases (SQL).
* Introduction to NoSQL video - https://www.youtube.com/watch?v=Eay2Ylhuf0k.
* Discussion - RDBMS/Key-Value/Document, MongoDB/CouchDB (focusing on schema, queries).
* You can start with setting up the workspace if you get bored.


### Workspace setup (5 minutes)
1. Go to https://c9.io/. sign-up/sign-in (possibly using github).
2. Create new workspace. Enter a name, clone this repository (`git@github.com:ranf/couchdb-demo.git`), and chose the Custom template.
3. Run `start-couch.sh` (you should see couchdb logs written into its terminal), and then `setup-couch.sh`.


### CouchDB REST Demo (10-20 minutes)
* Follow demo.sh to create a database, documents and views (simple map-reduce).
* API documentation - http://docs.couchdb.org/en/1.6.1/api/index.html


### Distributed Database Systems (10-20 minutes)
* CAP Theorem video - https://www.youtube.com/watch?v=Jw1iFr4v58M.
* Discussion - RDBMS/MongoDB/CouchDB. Mostly ignoring the video and focusing on CouchDB single server master-master replication.


### PouchDB and CouchDB Replication (10-20 minutes)
* Place your hostname in `pouchdb/app.js`, then open `index.html` (Preview + Pop Out).
* Inspecting the application - Network requests (uses the replication API, long-polling), IndexedDB.
* Using Futon for replication.
* Query our view from the web application.

---------------------------------------------------------------------

##### Additional Resources
* MongoDB vs MySQL - https://www.youtube.com/watch?v=JWaDa8taiIQ
* Document-Oriented Databases - https://www.youtube.com/watch?v=vWtYrG1IoEg, https://www.youtube.com/watch?v=2U58DFumv9w
* CouchDB - https://www.youtube.com/watch?v=E661isduPy8, https://www.youtube.com/watch?v=4GgBf4_cMtU
