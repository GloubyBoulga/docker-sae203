# Utiliser l'image debian officielle comme image parent
FROM debian:latest

# Installation des composants nécessaire
RUN apt update
RUN apt install -y git

# Copier le répertoire html du répertoire courant vers le répertoire de l'image /usr/.../htdocs
RUN  git clone https://github.com/GloubyBoulga/docker-sae203.git
RUN  cd docker-sae203
RUN  git checkout gh-pages
COPY ./index.html                  ./htdocs/
COPY ./Capybaramodif.png           ./htdocs/
COPY ./capybara.js                 ./htdocs/
COPY ./capybara_logo-modified.png  ./htdocs/
COPY ./style.css                   ./htdocs/

# Rendre le port 80 accessible au monde en dehors de ce conteneur
EXPOSE 80

