FROM debian:buster-20230202

ENV USER ftpuser

RUN apt-get update

RUN apt-get install vsftpd -y

COPY ./init.sh .

COPY vsftpd.conf /etc/vsftpd.conf

EXPOSE 21

ENTRYPOINT ["bash", "init.sh"]