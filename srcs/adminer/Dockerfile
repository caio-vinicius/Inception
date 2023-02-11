FROM debian:buster-20230202

RUN apt-get update && apt-get install -y php apache2 libapache2-mod-php php-mysql

COPY adminer-4.8.1-mysql.php /var/www/html/adminer.php

EXPOSE 4242

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
