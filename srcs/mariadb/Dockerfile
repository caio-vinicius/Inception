FROM debian:buster-20230202

RUN apt-get update

RUN apt-get install mariadb-server -y

COPY ./config.sql /tmp/config.sql

EXPOSE 3306

COPY ./init.sh .

ENTRYPOINT ["bash", "init.sh"]
