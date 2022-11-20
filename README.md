# NvimConfig
Neovim Config

# How to Install :

Install packer : 

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Move Nvim config

```sh
sudo pacman -S python kitty nvim npm nodejs
cp -r nvim ~/.config/nvim/
cp -r kitty ~/.config/kitty/
python3 -m pip install compiledb
python3 -m pip install norminette
export MAIL="yourmail"
export USER="user"
mkdir -p ~/.local/share/nvim/site/plugin
cp stdheader.vim ~/.loca/share/nvim/site/plugin/
```

In Nvim run

```sh
:PackerSync
:Mason (for choosing a LSP, and formatter)
:MasonInstall <LSP/Fmt>
:CocInstall coc-json coc-tsserver coc-clangd coc-snippets
```

# Colorscheme

Uncomment the theme you want to use in themes.lua

# Alias

```sh
alias vim="nvim"
alias vi="nvim"
alias icat="kitty +kitten icat"
```

# Kitty

```
cp -r kitty ~/.config/kitty/
```

Plugins List

Coc
Treesiter
NeoTree
Coc-Snippets
Coc-Clangd
Mason
Godbolt
ToggleTerm
Telescope
