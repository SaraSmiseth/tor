FROM alpine:latest

RUN apk update && apk add \
    tor \
    && rm -rf /var/cache/apk/*

# default port for incoming Tor connections
EXPOSE 9001

# make sure files are owned by tor user
RUN chown -R tor /etc/tor
RUN chown -R tor /var/lib/tor

USER tor

ENTRYPOINT [ "tor" ]
