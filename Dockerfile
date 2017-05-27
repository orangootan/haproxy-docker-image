FROM alpine:3.6
RUN apk update && apk upgrade
ARG REPO=http://dl-cdn.alpinelinux.org/alpine/edge/main
ARG VERSION=1.7.5-r1
RUN apk add haproxy=$VERSION --update-cache --repository $REPO
EXPOSE 80 443
VOLUME /etc/haproxy
STOPSIGNAL SIGUSR1
ENTRYPOINT ["haproxy", "-db"]
CMD ["-f", "/etc/haproxy"]
