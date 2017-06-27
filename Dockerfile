# ubuntu 16.04
FROM ubuntu:104bec311bcdfc882ea08fdd4f5417ecfb1976adea5a0c237e129c728cb7eada

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
