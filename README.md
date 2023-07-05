# cloudfared-ssh

## About

[Cloudflared](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/) is the command-line client for Cloudflare Tunnel with tunneling daemon that proxies traffic from the Cloudflare network to your origins. This repository provides container image to integrate into your CI/CD and etc. when your SSH endpoint is behind Cloudflare.

## Links

- Image on DockerHub: https://hub.docker.com/r/getflow/cloudflared-ssh
- Sources: https://github.com/getflow/cloudflared-ssh

## Usage

To connect over ssh to your server just call `ssh user@your-ssh-server-address -i your-key`. Or if you're using git `git clone git@your-git-ssh-endpoint`.

### Use cases

- [Integration into CI/CD](https://github.com/getflow/poetry-docker/blob/main/.github/workflows/mirror.yml)

## Contact

contact@getflow.tech
