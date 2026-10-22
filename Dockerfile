FROM traefik:v3.5

EXPOSE 8080

CMD [
  "traefik",
  "--api.insecure=true",
  "--api.dashboard=true",
  "--entrypoints.web.address=:8080"
]
