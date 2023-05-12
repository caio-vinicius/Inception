useradd -m -s /bin/bash "$USER_LOGIN" && echo "$USER_LOGIN:$USER_LOGIN" | chpasswd && service vsftpd start

vsftpd /etc/vsftpd.conf