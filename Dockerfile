FROM nodered/node-red
COPY flows.json /data/flows.json
RUN ls -la /data/