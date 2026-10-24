FROM jc21/nginx-proxy-manager:2.11.3

USER root

RUN mkdir -p /data \
    && mkdir -p /data/logs \
    && mkdir -p /data/nginx \
    && mkdir -p /data/access \
    && mkdir -p /data/custom_ssl \
    && mkdir -p /etc/letsencrypt

ENV DISABLE_IPV6=true
ENV PUID=0
ENV PGID=0

EXPOSE 80
EXPOSE 81
EXPOSE 443
EXPOSE 8080

CMD ["/init"]
