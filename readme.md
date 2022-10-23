usefull commands
1. createdb db_name_to_create / see: config database.json file 
2. npx db-migrate up / npx db-migrate down
3. npx db-migrate create name-of-table (npx db-migrate create create-schema --sql-file - if not using rc file)
4. for better naming convension in pg we can install
npm install @graphile-contrib/pg-simplify-inflector

* now we can append plugin in server.sh