FROM nodered/node-red

RUN apk upgrade --available

WORKDIR /data
COPY package.json .
COPY flow.json .
COPY settings.js .
COPY flow_cred.json .


RUN ls -la /data/
ENV TZ=Europe/Amsterdam
ENTRYPOINT [ "node-red"]