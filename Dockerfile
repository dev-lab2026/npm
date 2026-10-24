FROM jc21/nginx-proxy-manager:latest

ENV DISABLE_IPV6=true

EXPOSE 8080

CMD ["/init"]
