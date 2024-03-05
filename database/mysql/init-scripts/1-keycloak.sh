echo "** Creating Keycloak database '$KC_DB_SCHEMA' and user '$KC_DB_USERNAME'"

mysql -u root -p$MYSQL_ROOT_PASSWORD --execute \
"CREATE USER '$KC_DB_USERNAME'@'%' IDENTIFIED BY '$KC_DB_PASSWORD';
CREATE DATABASE IF NOT EXISTS $KC_DB_SCHEMA;
GRANT ALL PRIVILEGES ON $KC_DB_SCHEMA.* TO '$KC_DB_USERNAME'@'%';"

echo "** Finished creating default DB and users"

# DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"
