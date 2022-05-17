# Utiliser l'image httpd officielle comme image parent
FROM debian:latest

# Copier le répertoire html du répertoire courant vers le répertoire de l'image /usr/.../htdocs
COPY ./docker-sae203/index.html /usr/local/apache2/htdocs/

# Exécuter la commande echo sur le conteneur 
# (il peut s'agir de n'importe quelle autre commande)


# Rendre le port 80 accessible au monde en dehors de ce conteneur
EXPOSE 80

