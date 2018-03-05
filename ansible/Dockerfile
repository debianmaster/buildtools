FROM alpine:edge

MAINTAINER Chakradhar Jonagam

RUN apk update && \ 
apk add --no-cache ansible && \
apk add bash && \
apk add git && \
apk add py-boto && \
apk add py-pip && \
apk add openssh && \
pip install boto3 &&  \
rm -rf /tmp/* && \
rm -rf /var/cache/apk/*

RUN adduser -D -u 1001 worker

USER worker
