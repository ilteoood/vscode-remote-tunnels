FROM ubuntu:22.04

LABEL maintainer.name="Matteo Pietro Dazzi" \
    maintainer.email="matteopietro.dazzi@gmail.com" \
    version="1.0.0" \
    description="VSCode remote tunnels Docker image that can be easily deployed everywhere you want"

ENV MACHINE_NAME vscode-remote-tunnels

ARG TARGETARCH

COPY src/* /usr/local/bin/

RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y --no-install-recommends \
    tzdata \
    gnome-keyring wget curl python3-minimal ca-certificates \
    git build-essential && \
    apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* && \
    curl -sL "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-${TARGETARCH}" --output /tmp/vscode-cli.tar.gz && \
    tar -xf /tmp/vscode-cli.tar.gz -C /usr/bin && \
    rm /tmp/vscode-cli.tar.gz

ENTRYPOINT [ "entrypoint" ]