FROM nodered/node-red
COPY ./flows.json /data/
RUN ls -la /data/