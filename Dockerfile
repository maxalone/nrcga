FROM nodered/node-red
USER root
RUN apk upgrade --available

WORKDIR /data
COPY package.json .
COPY flow.json .
COPY settings.js .
COPY flow_cred.json .

USER node-red
RUN ls -la /data/
ENV TZ=Europe/Amsterdam
ENTRYPOINT [ "node-red", "start", "/usr/src/node-red" ]