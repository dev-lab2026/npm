FROM jc21/nginx-proxy-manager:2.11.3

USER root

RUN mkdir -p /data \
    && mkdir -p /data/nginx \
    && mkdir -p /data/logs \
    && mkdir -p /etc/letsencrypt

ENV PUID=0
ENV PGID=0
ENV DISABLE_IPV6=true

EXPOSE 80
EXPOSE 81
EXPOSE 443
EXPOSE 8080

ENTRYPOINT []

CMD ["/init"]
