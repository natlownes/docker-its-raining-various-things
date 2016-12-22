FROM ubuntu:16.04

RUN apt-get update --fix-missing \
  && \
  apt-get install -yy \
    ffmpeg \
    festival \
  && rm -rf /var/lib/apt/lists/*

COPY ./media /media
COPY ./bin/run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/bin/bash", "/run.sh"]
