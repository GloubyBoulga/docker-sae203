# Utiliser l'image debian officielle comme image parent
FROM debian:latest

# Installation des composants nécessaire
RUN apt update
RUN apt install -y git

# Copier le répertoire html du répertoire courant vers le répertoire de l'image /usr/.../htdocs
RUN git checkout gh-pages
COPY ./index.html ./htdocs/
COPY ./index.html ./htdocs/



# Rendre le port 80 accessible au monde en dehors de ce conteneur
EXPOSE 80

