# NeoRocket

# Nvim

```sh
sudo pacman -Sy
```
```sh
sudo pacman -S git python nvim npm nodejs
```
```sh
cp -r nvim ~/.config/nvim/
```
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

```sh
python3 -m pip install compiledb norminette
```

```sh
mkdir -p ~/.local/share/nvim/site/plugin/
```

```sh
cp nvim/stdheader.vim ~/.local/share/nvim/site/plugin/
```

### In Neovim Run

```sh
:PackerSync
:Mason (for choosing a LSP, and formatter) Also use :MasonInstall if you want
:CocInstall coc-json coc-tsserver coc-clangd coc-snippets coc-pairs coc-discord-rpc
```

# Colorscheme

Uncomment the theme you want to use in themes.lua

# Author
Unam3dd
