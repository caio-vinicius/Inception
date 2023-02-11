FROM debian:buster-20230202

ENV USER ftpuser

RUN apt-get update

RUN apt-get install vsftpd -y

RUN useradd -m -s /bin/bash $USER && \
    echo "$USER:$USER" | chpasswd && \
    service vsftpd start

COPY vsftpd.conf /etc/vsftpd.conf

EXPOSE 21

ENTRYPOINT ["vsftpd", "/etc/vsftpd.conf"]
