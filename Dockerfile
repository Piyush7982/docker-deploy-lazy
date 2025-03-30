FROM ubuntu:20.04


ENV DEBIAN_FRONTEND=noninteractive


RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker \
    && echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker


RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    nano \
    vim \
    python3 \
    python3-pip \
    nodejs \
    npm \
    curl \
    ca-certificates \
    apt-transport-https \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*


RUN npm install -g ganache-cli


RUN pip3 install Flask web3 hexbytes py-solc-x


CMD ["bash"]
