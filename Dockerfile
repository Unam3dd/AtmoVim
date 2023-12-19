FROM alpine:3.19
STOPSIGNAL SIGTERM
RUN apk update && apk upgrade && apk add --no-cache neovim gcc make sudo git && apk -v cache clean
RUN mkdir -p /root/.config/
COPY ./AtmoVim/ /root/.config/nvim/
ENTRYPOINT ["/usr/bin/nvim"]
