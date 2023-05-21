FROM ubuntu:20.04

WORKDIR /app

RUN apt-get update
RUN apt-get install -y curl

COPY script.sh .
RUN chmod +x script.sh

CMD ./script.sh
