FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    nano \
    vim \
    python3 \
    python3-pip \
    python3-venv \
    nodejs \
    npm \
    curl \
    ca-certificates \
    apt-transport-https \
    iputils-ping \
    software-properties-common \
    net-tools \
    iproute2 \
    traceroute \
    dnsutils \
    iperf3 \
    mtr \
    socat \
    openssh-client \
    tcpdump \
    telnet \
    ufw \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g ganache-cli

WORKDIR /app

RUN python3 -m venv /app/venv

RUN /app/venv/bin/pip install Flask web3 hexbytes py-solc-x



CMD ["/bin/bash"]

