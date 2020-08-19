FROM python:3.7.9-slim-stretch

RUN apt update
RUN apt install gcc libffi-dev python3-dev libssl-dev -y

RUN pip install updog

RUN mkdir -p /input
VOLUME [ "/input" ]

ENV PASSWORD=password
ENV SSL_MODE=false
EXPOSE 9090

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh