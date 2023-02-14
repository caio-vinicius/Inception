sed -i s/{{PASSWORD}}/$PASSWORD/g /app/wordpress/wp-config.php
php-fpm7.3 --nodaemonize
