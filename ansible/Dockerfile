FROM alpine:edge

MAINTAINER Chakra

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
