FROM traefik:v3.5

COPY traefik.yml /etc/traefik/traefik.yml
COPY dynamic/ /etc/traefik/dynamic/

EXPOSE 8080

CMD ["traefik"]
