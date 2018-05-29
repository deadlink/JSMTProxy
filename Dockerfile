FROM node:8
RUN apt-get update
RUN npm install pm2 -g
RUN mkdir /jsmtproxy
COPY mtproxy.js /jsmtproxy/mtproxy.js
COPY config.json /jsmtproxy/config.json
COPY start.sh /start.sh
CMD ["./start.sh"]
EXPOSE 6969
