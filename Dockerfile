FROM nodered/node-red
USER root
RUN apk upgrade --available

WORKDIR /usr/src/node-red/.node-red
COPY package.json .
COPY flow.json .
COPY settings.js .
COPY flow_cred.json .


RUN ls -la /data/
ENV TZ=Europe/Amsterdam
ENTRYPOINT [ "node-red" ]