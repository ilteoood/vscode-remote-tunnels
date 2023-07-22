# vscode-remote-tunnels

VSCode remote tunnels Docker image that can be easily deployed everywhere you want

[![](https://images.microbadger.com/badges/version/ilteoood/vscode-remote-tunnels.svg)](https://microbadger.com/images/ilteoood/vscode-remote-tunnels "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/ilteoood/vscode-remote-tunnels.svg)](https://microbadger.com/images/ilteoood/vscode-remote-tunnels "Get your own image badge on microbadger.com")
![Build only image](https://github.com/ilteoood/vscode-remote-tunnels/workflows/Build%20only%20image/badge.svg?branch=main)

------------------------------------------------

This is a [multi-arch](https://medium.com/gft-engineering/docker-why-multi-arch-images-matters-927397a5be2e) image, updated automatically thanks to [GitHub Actions](https://github.com/features/actions).

Its purpose is to provide a [Visual Studio Code Server](https://code.visualstudio.com/docs/remote/vscode-server) instance accessible through [vscode.dev](https://vscode.dev). 

## Configuration

The container is configurable using 1 environment variable:

| Name | Mandatory | Default value| Description |
|------|-----------|--------------|-------------|
|MACHINE_NAME|No|`vscode-remote-tunnels`|The name of the machine that will be displayed using the `Remote tunnel` VSCode extension|

## Execution

You can run this image using [Docker compose](https://docs.docker.com/compose/) and the [sample file](./docker-compose.yml) provided.  

Or you can use the standard `docker run` command.

```sh
sudo docker run --name CONTAINER_NAME -e MACHINE_NAME=YOUR_MACHINE_NAME ilteoood/vscode-remote-tunnels
```

## Do you like my work?
<p align="center">
    <a href="https://www.patreon.com/ilteoood">
        <img align="center" alt="patreon" src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fshieldsio-patreon.vercel.app%2Fapi%3Fusername%3Dilteoood%26type%3Dpatrons&style=for-the-badge">
        </img>
    </a>
    or
    <a href="https://www.buymeacoffee.com/ilteoood">
        <img align="center" alt="buy-me-a-coffee" src="https://img.shields.io/badge/-buy_me_a%C2%A0coffee-gray?logo=buy-me-a-coffee">
        </img>
    </a>
</p>