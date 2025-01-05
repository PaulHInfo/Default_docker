FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    net-tools \
    sudo \
    && rm -rf /var/lib/apt/lists/*
#utilisateur mdp : password
RUN useradd -m -s /bin/bash utilisateur && echo "utilisateur:password" | chpasswd \
    && usermod -aG sudo utilisateur

USER utilisateur

WORKDIR /home/utilisateur

CMD ["bash"]
