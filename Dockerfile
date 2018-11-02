FROM ubuntu:18.04

WORKDIR /data

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    postgis && \
    rm -rf /var/lib/apt/lists/*

CMD ["shp2pgsql"]
