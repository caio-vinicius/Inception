FROM debian:buster-20230202

WORKDIR app/

RUN apt-get update

RUN apt-get install php-fpm php7.3-mysql -y

RUN /etc/init.d/php7.3-fpm start

ADD wordpress-6.1.1.tar.gz .

COPY www.conf /etc/php/7.3/fpm/pool.d/

COPY wp-config.php /app/wordpress/
COPY redis-cache /app/wordpress/wp-content/plugins/redis-cache
COPY object-cache.php /app/wordpress/wp-content/

RUN chown www-data:www-data -R /app/wordpress

EXPOSE 9000

COPY init.sh .

ENTRYPOINT ["bash", "init.sh"]
