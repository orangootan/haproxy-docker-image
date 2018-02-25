RUN apk add haproxy=1.7.9-r1 \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/main \
FROM alpine:3.7
RUN apk upgrade --no-cache
    --no-cache
#VOLUME /etc/haproxy
STOPSIGNAL SIGUSR1
ENTRYPOINT ["haproxy", "-db"]
CMD ["-f", "/etc/haproxy"]
