FROM mysql:8

RUN apt-get update \
  && apt-get install -y python3-pip \
  && pip3 install mycli \
  && rm -rf /var/lib/apt-/lists/*

COPY world.sql world_x.sql /docker-entrypoint-initdb.d/
