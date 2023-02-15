sed -i s/{{DB_PASS}}/$DB_PASS/g /tmp/config.sql
sed -i s/{{DB_NAME}}/$DB_NAME/g /tmp/config.sql
sed -i s/{{DB_USER}}/$DB_USER/g /tmp/config.sql

sed -i s/{{USER_LOGIN}}/$USER_LOGIN/g /tmp/config.sql
sed -i s/{{USER_PASS}}/$USER_PASS/g /tmp/config.sql
sed -i s/{{USER_NICK}}/$USER_NICK/g /tmp/config.sql
sed -i s/{{USER_EMAIL}}/$USER_EMAIL/g /tmp/config.sql

mysqld_safe --init-file=/tmp/config.sql --bind-address=0.0.0.0
