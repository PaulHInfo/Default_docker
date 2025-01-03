# Utiliser l'image de base Ubuntu (dernière version disponible)
FROM ubuntu:latest

# Mise à jour et installation des outils de base lors de la création de l'image
RUN apt update && apt upgrade -y && apt install -y bash

# Ajouter un utilisateur avec des privilèges sudo (facultatif)
RUN useradd -m -s /bin/bash user && echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Définir l'utilisateur par défaut comme root
USER root

WORKDIR /root


# Définir la commande par défaut à exécuter lors du lancement du conteneur
#CMD ["bash", "-c", "apt update && apt upgrade -y && tail -f /dev/null"]
CMD ["bash"]
