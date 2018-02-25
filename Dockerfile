RUN apk add haproxy=1.7.9-r1 \
FROM alpine:3.7
RUN apk upgrade --no-cache
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/haproxy
STOPSIGNAL SIGUSR1
ENTRYPOINT ["haproxy", "-db"]
CMD ["-f", "/etc/haproxy"]
