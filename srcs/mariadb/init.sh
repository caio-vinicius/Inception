sed -i s/{{PASSWORD}}/$PASSWORD/g /tmp/config.sql
mysqld_safe --init-file=/tmp/config.sql --bind-address=0.0.0.0
