FROM nodered/node-red
COPY flow.json /data/flows.json
COPY settings.js /data/settings.js
RUN ls -la /data/