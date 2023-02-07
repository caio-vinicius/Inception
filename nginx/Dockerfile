FROM debian:buster-20230202

RUN apt-get update

RUN apt-get install nginx -y

COPY ./certs/*.pem /etc/nginx/certs/
COPY default /etc/nginx/sites-available/default

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
