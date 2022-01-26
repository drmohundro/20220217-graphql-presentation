create_database:
	psql -c "create database sakila"

create_db_user:
	psql -c "create role testuser with login 'password'"
	psql -c "alter role testuser createdb"

	# may be unnecessary if tables are all created with this user
	#psql -c "grant select on all tables in schema public to testuser"

download_files:
	wget https://raw.githubusercontent.com/jOOQ/sakila/main/postgres-sakila-db/postgres-sakila-schema.sql
	wget https://raw.githubusercontent.com/jOOQ/sakila/main/postgres-sakila-db/postgres-sakila-insert-data.sql

import_data:
	# create the schema
	psql sakila -u testuser -f postgres-sakila-schema.sql

	# insert the data
	psql sakila -u testuser -f postgres-sakila-insert-data.sql

cleanup_data:
	rm postgres-sakila-schema.sql
	rm postgres-sakila-insert-data.sql
