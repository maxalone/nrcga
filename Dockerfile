FROM nodered/node-red
USER root
RUN apk upgrade --available
USER node-red
WORKDIR /data/node-red
COPY package.json /data/node-red/package.json
COPY flow.json /data/node-red/flows.json
COPY settings.js /data/node-red/settings.js
COPY flow_cred.json /data/node-red/flow_cred.json


RUN ls -la /data/
ENV TZ=Europe/Amsterdam
ENTRYPOINT [ "node-red" ]