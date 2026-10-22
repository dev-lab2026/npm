# Image Node.js
FROM node:22-alpine

# Répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le code source
COPY . .

# Exposer le port 8080
EXPOSE 8080

# Démarrer l'application
CMD ["npm", "start"]
