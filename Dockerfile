FROM nodered/node-red
WORKDIR /data
COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production
COPY flow.json .
COPY settings.js .
COPY flow_cred.json .
USER root
RUN apt-get update
USER node-red
RUN ls -la /data/
ENV TZ=Europe/Amsterdam
