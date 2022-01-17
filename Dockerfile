FROM mysql:8

RUN apt-get update \
  && apt-get install -y wget libcurl4 python3-pip \
  && wget --directory-prefix /tmp https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell_8.0.27-1debian10_amd64.deb \
  && dpkg -i /tmp/mysql-shell_8.0.27-1debian10_amd64.deb \
  && pip3 install mycli \
  && rm -rf /var/lib/apt-/lists/* /tmp/mysql-shell_8.0.27-1debian10_amd64.deb

COPY world.sql world_x.sql /docker-entrypoint-initdb.d/
