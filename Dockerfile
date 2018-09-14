FROM alpine:latest as build
MAINTAINER Kentaro Shimatani <peccul@gmail.com>

ENV VERSION=v0.1.3
RUN set -x \
  && wget https://github.com/m3ng9i/ran/releases/download/${VERSION}/ran_linux_amd64.zip \
  && unzip ran_linux_amd64.zip \
  && rm ran_linux_amd64.zip \
  && mv ran_linux_amd64 /ran

FROM alpine:latest

COPY --from=build /ran /usr/local/bin/

WORKDIR /www

VOLUME ["/www"]

CMD ["ran"]
