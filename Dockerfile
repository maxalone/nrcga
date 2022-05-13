FROM nodered/node-red
USER root
RUN apk upgrade --available

WORKDIR /data
COPY package.json /data/package.json
COPY flow.json /data/flows.json
COPY settings.js /data/settings.js
COPY flow_cred.json /data/flow_cred.json


RUN ls -la /data/
ENV TZ=Europe/Amsterdam
ENTRYPOINT [ "node-red", "-s", "/data/settings.js"]