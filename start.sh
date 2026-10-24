#!/bin/sh

# Démarre NPM en arrière-plan
/init &

# Attendre que NPM démarre
sleep 30

# Proxy local de 8080 vers 81 (interface NPM)
cat > /etc/nginx/http.d/default.conf <<EOF
server {
    listen 8080;

    location / {
        proxy_pass http://127.0.0.1:81;
    }
}
EOF

nginx -g "daemon off;"
