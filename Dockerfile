FROM debian:latest
STOPSIGNAL SIGTERM
RUN apt-get update && apt-get install git curl python3 python3-venv dpkg wget zip nodejs npm clang clangd -y && apt-get clean
RUN wget https://github.com/neovim/neovim-releases/releases/download/nightly/nvim-linux64.deb && dpkg -i nvim-linux64.deb
RUN mkdir -p /root/.config/
COPY ./AtmoVim/ /root/.config/nvim/
ENTRYPOINT ["nvim"]
