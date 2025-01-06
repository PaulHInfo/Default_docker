FROM ubuntu:latest
# --- test ---
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    net-tools \
    sudo \
    && rm -rf /var/lib/apt/lists/*
#utilisateur mdp : password
RUN useradd -m -s /bin/bash utilisateur && echo "utilisateur:test" | chpasswd \
    && usermod -aG sudo utilisateur

USER utilisateur

WORKDIR /home/utilisateur

CMD ["bash"]
