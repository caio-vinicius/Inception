FROM debian:buster-20230202

RUN apt-get update

RUN apt-get install nginx openssl -y

RUN mkdir -p /etc/nginx/certs/

RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=42, Inc./CN=lenzo-pe.42.fr" -addext "subjectAltName=DNS:lenzo-pe.42.fr" -newkey rsa:2048 -keyout /etc/nginx/certs/key.pem -out /etc/nginx/certs/cert.pem;

COPY default /etc/nginx/sites-available/default

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
