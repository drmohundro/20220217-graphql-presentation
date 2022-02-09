create_database:
	createdb testuser
	psql -c "CREATE ROLE testuser WITH LOGIN PASSWORD 'password'"
	psql -c "ALTER ROLE testuser CREATEDB"
	psql -U testuser -c "CREATE DATABASE sakila"

download_files:
	wget https://raw.githubusercontent.com/jOOQ/sakila/main/postgres-sakila-db/postgres-sakila-schema.sql
	wget https://raw.githubusercontent.com/jOOQ/sakila/main/postgres-sakila-db/postgres-sakila-insert-data.sql

import_data:
	# create the schema
	psql sakila -U testuser -f postgres-sakila-schema.sql

	# insert the data
	psql sakila -U testuser -f postgres-sakila-insert-data.sql

cleanup_data:
	rm postgres-sakila-schema.sql
	rm postgres-sakila-insert-data.sql
