FROM nodered/node-red
USER root
RUN apk upgrade --available

WORKDIR /usr/src/node-red/.node-red
COPY package.json /usr/src/node-red/.node-red/package.json
COPY flow.json /usr/src/node-red/.node-red/flows.json
COPY settings.js /usr/src/node-red/.node-red/settings.js
COPY flow_cred.json /usr/src/node-red/.node-red/flow_cred.json


RUN ls -la /data/
ENV TZ=Europe/Amsterdam
ENTRYPOINT [ "node-red" ]