FROM nodered/node-red
COPY flow.json /data/flows.json
RUN ls -la /data/