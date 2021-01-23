FROM alpine:3.13.0
RUN apk upgrade --no-cache
RUN apk add haproxy=2.2.8-r1 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/haproxy
STOPSIGNAL SIGUSR1
ENTRYPOINT ["haproxy", "-db"]
CMD ["-f", "/etc/haproxy"]
