FROM ubuntu:15.04

RUN apt-get update --fix-missing
RUN apt-get install -yy ffmpeg festival

COPY ./media /media
COPY ./bin/run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/bin/bash", "/run.sh"]
