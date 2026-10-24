FROM jc21/nginx-proxy-manager:latest

USER root

# Création des répertoires attendus par NPM
RUN mkdir -p /data/nginx \
    && mkdir -p /data/custom_ssl \
    && mkdir -p /data/logs \
    && mkdir -p /etc/letsencrypt

# Désactivation IPv6
ENV DISABLE_IPV6=true

# Ports utilisés par NPM
EXPOSE 80
EXPOSE 81
EXPOSE 443
EXPOSE 8080

# Healthcheck Clever Cloud
RUN echo "ok" > /var/www/html/index.html || true

CMD ["/init"]
