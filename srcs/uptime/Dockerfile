FROM debian:buster-20230202

RUN apt-get update && apt-get install git -y

ADD node-v18.14.0-linux-x64.tar.xz /usr/local/

ENV PATH="/usr/local/node-v18.14.0-linux-x64/bin:${PATH}"

RUN git clone --depth 1 --branch 1.20.0 https://github.com/louislam/uptime-kuma.git

WORKDIR /uptime-kuma

RUN npm run setup

EXPOSE 3001

ENTRYPOINT ["node", "server/server.js"]
