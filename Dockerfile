FROM jc21/nginx-proxy-manager:latest

RUN mkdir -p /data
RUN mkdir -p /etc/letsencrypt

ENV DISABLE_IPV6=true

EXPOSE 80
EXPOSE 81
EXPOSE 443

CMD ["/init"]
