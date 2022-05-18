# Utiliser l'image debian officielle comme image parent
FROM debian:latest

# Copier le répertoire html du répertoire courant vers le répertoire de l'image /usr/.../htdocs
COPY ./html ./htdocs/

# Validation de la création
RUN echo 'Création réussie !'

# Rendre le port 80 accessible au monde en dehors de ce conteneur
EXPOSE 80

