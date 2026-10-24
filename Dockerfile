FROM traefik:v3.5

COPY traefik.yml /etc/traefik/traefik.yml

CMD ["traefik"]
