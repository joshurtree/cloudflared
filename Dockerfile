FROM debian:latest
RUN apt update && apt upgrade
RUN apt install bash curl -y
RUN curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb 
RUN dpkg -i cloudflared.deb
COPY . .
ENTRYPOINT [ "/bin/bash", "./init.sh" ]