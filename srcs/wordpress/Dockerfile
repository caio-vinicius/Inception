FROM debian:buster-20230202

WORKDIR app/

RUN apt-get update

RUN apt-get install php-fpm php7.3-mysql -y

RUN /etc/init.d/php7.3-fpm start

ADD wordpress-personalized.tar.gz .

COPY www.conf /etc/php/7.3/fpm/pool.d/

RUN chown www-data:www-data -R /app/wordpress

EXPOSE 9000

COPY init.sh .

ENTRYPOINT ["bash", "init.sh"]
