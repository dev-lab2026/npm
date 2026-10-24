FROM jc21/nginx-proxy-manager:2.11.3

ENV DISABLE_IPV6=true
ENV PUID=0
ENV PGID=0

RUN mkdir -p /data \
    && mkdir -p /etc/letsencrypt

# Clever Cloud fournit le port via $PORT
RUN apk add --no-cache nginx

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8080

CMD ["/start.sh"]
