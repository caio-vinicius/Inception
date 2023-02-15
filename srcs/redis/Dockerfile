FROM debian:buster-20230202

RUN apt-get update

RUN apt-get install redis-server -y

COPY redis.conf /etc/redis/redis.conf

EXPOSE 6379

ENTRYPOINT ["redis-server", "/etc/redis/redis.conf"]
