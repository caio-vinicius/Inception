FROM debian:buster-20230202

WORKDIR app/

RUN apt-get update

RUN apt-get install php-fpm php7.3-mysql -y

RUN /etc/init.d/php7.3-fpm start

ADD wordpress-6.1.1.tar.gz .

COPY www.conf /etc/php/7.3/fpm/pool.d/

COPY wp-config.php /app/wordpress/

EXPOSE 9000

ENTRYPOINT [ "php-fpm7.3", "--nodaemonize" ]
