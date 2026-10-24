FROM traefik:v3.0

RUN mkdir -p /etc/traefik/dynamic

COPY traefik.yml /etc/traefik/traefik.yml

EXPOSE 8080
