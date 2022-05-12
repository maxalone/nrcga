FROM nodered/node-red
WORKDIR /data
COPY package.json .

COPY flow.json .
COPY settings.js .
COPY flow_cred.json .
USER root
RUN apk upgrade --available
USER node-red
RUN ls -la /data/
ENV TZ=Europe/Amsterdam
ENTRYPOINT [ "node-red" ]