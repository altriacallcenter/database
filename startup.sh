echo "host all  all  0.0.0.0/0  trust" >> /var/lib/postgresql/data/pg_hba.conf
echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf
echo "SELECT 'CREATE DATABASE altria' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'altria')\gexec" | psql
echo "SELECT 'CREATE DATABASE altria_rpc' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'altria_rpc')\gexec" | psql
