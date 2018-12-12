FROM alpine:latest

MAINTAINER Mike Cronin "mikec@evidentid.com"

RUN apk add ghostscript
RUN mkdir /var/local/bin
RUN mkdir /var/local/data
ADD sani.sh /var/local/bin/sani.sh
CMD /var/local/bin/sani.sh

