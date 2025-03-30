
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    nodejs \
    npm \
    curl


RUN npm install -g ganache-cli


RUN pip3 install Flask web3 hexbytes py-solc-x

CMD ["bash"]
