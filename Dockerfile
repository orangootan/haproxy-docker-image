FROM alpine:3.13.5
RUN apk upgrade --no-cache
RUN apk add haproxy=2.2.13-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/haproxy
STOPSIGNAL SIGUSR1
ENTRYPOINT ["haproxy", "-db"]
CMD ["-f", "/etc/haproxy"]
