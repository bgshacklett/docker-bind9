FROM alpine:3.12

MAINTAINER Brian G. Shacklett <brian@digital-traffic.net>

RUN apk --update add bind bind-dnssec-tools

EXPOSE 53

USER 5353:5353

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
