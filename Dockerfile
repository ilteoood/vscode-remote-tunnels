FROM ubuntu:22.04

ENV MACHINE_NAME vscode-remote-tunnels

#ARG ARCH=armhf
#ARG ARCH=x86-64
ARG ARCH=arm64

RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y --no-install-recommends \
    tzdata \
    gnome-keyring wget curl python3-minimal ca-certificates \
    git build-essential && \
    apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* && \
    curl -sL "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-${ARCH}" --output /tmp/vscode-cli.tar.gz && \
    tar -xf /tmp/vscode-cli.tar.gz -C /usr/bin && \
    rm /tmp/vscode-cli.tar.gz

COPY src/* /usr/local/bin/

ENTRYPOINT [ "entrypoint" ]