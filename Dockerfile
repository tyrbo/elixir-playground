FROM trenpixster/elixir:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ADD . /usr/src/app
