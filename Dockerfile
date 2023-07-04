FROM debian:bullseye

ENV TOKEN_ID=
ENV TOKEN_SECRET=
ENV TARGET_HOSTNAME=

RUN apt-get -y update && \
    apt-get install -y curl openssh-client git && \
    mkdir -p --mode=0755 /usr/share/keyrings && \
    curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null && \
    echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared bullseye main' | tee /etc/apt/sources.list.d/cloudflared.list && \
    apt-get update && apt-get install cloudflared 
     
COPY ./.ssh_config /root/.ssh/config

