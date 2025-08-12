# 🚀 Configuration Neovim Moderne 2025

Une configuration Neovim moderne, rapide et modulaire utilisant les dernières bonnes pratiques de 2025.

## ✨ Fonctionnalités

### 🎨 Interface Moderne
- **Dashboard élégant** avec `alpha-nvim`
- **Barre de statut** avec `lualine`
- **Onglets** avec `bufferline`
- **Icônes** avec `nvim-web-devicons`
- **Thèmes multiples** (Gruvbox, Tokyo Night, Catppuccin, etc.)

### 💡 Intelligence de Code
- **Complétion intelligente** avec `nvim-cmp`
- **LSP moderne** avec `mason.nvim` + `lspconfig`
- **Formatage automatique** avec `conform.nvim`
- **Diagnostics avancés** avec `trouble.nvim`
- **Snippets** avec `LuaSnip`

### 🧠 Navigation et Ergonomie
- **Recherche puissante** avec `telescope.nvim`
- **Explorateur de fichiers** avec `neo-tree`
- **Cartographie des raccourcis** avec `which-key`
- **Intégration Git** avec `gitsigns`

### ⚡ Performance
- **Gestion des plugins** avec `lazy.nvim`
- **Chargement à la demande**
- **Optimisations de démarrage**
- **Support des gros fichiers**

## 🛠️ Installation

### Prérequis
- Neovim 0.9.0+
- Nerd Fonts (pour les icônes)
- Git

### Installation
1. Clonez ce dépôt :
```bash
git clone <votre-repo> ~/.config/nvim
```

2. Lancez Neovim :
```bash
nvim
```

3. Les plugins s'installeront automatiquement via `lazy.nvim`

## ⌨️ Raccourcis Clavier

### Navigation
- `<C-t>` - Terminal
- `<C-q>` - Quitter
- `<C-x>` - Quitter tout
- `<C-s>` - Sauvegarder
- `<S-Tab>` - Buffer suivant

### Fenêtres
- `<C-V>` - Split vertical
- `<C-h>` - Split horizontal
- `<C-Right/Left/Up/Down>` - Navigation entre fenêtres
- `<S-Right/Left/Up/Down>` - Navigation entre fenêtres (alternatif)

### Redimensionnement
- `<C-r><Up/Down/Left/Right>` - Redimensionner fenêtres
- `<C-r>=` - Égaliser fenêtres

### Édition
- `<C-z>` - Annuler
- `<C-Left/Right>` - Navigation par mots
- `<Tab>` - Indenter
- `<C-c>` - Commenter
- `<A-c>` - Décommenter

### LSP (nouveaux raccourcis)
- `gd` - Aller à la définition
- `gr` - Références
- `gi` - Implémentation
- `gt` - Définition de type
- `K` - Aide contextuelle
- `<leader>rn` - Renommer
- `<leader>ca` - Actions de code
- `<leader>f` - Formater
- `<leader>d` - Diagnostics

## 🔧 Configuration

### Structure des Fichiers
```
~/.config/nvim/
├── init.lua              # Point d'entrée principal
├── core/
│   ├── options.lua       # Options Neovim
│   └── keymaps.lua       # Raccourcis clavier
└── plugins/
    ├── alpha.lua         # Dashboard
    ├── bufferline.lua    # Onglets
    ├── cmp.lua          # Complétion
    ├── conform.lua      # Formatage
    ├── gitsigns.lua     # Git
    ├── lsp.lua          # LSP
    ├── lualine.lua      # Barre de statut
    ├── mason.lua        # Gestionnaire LSP
    ├── neotree.lua      # Explorateur
    ├── telescope.lua    # Recherche
    ├── themes.lua       # Thèmes
    ├── toggleterm.lua   # Terminal
    ├── treesitter.lua   # Syntaxe
    ├── trouble.lua      # Diagnostics
    └── which-key.lua    # Cartographie
```

### Personnalisation

#### Thèmes
Modifiez `plugins/themes.lua` pour changer de thème :
```lua
vim.cmd.colorscheme "tokyonight"  -- ou "gruvbox", "catppuccin", etc.
```

#### LSP
Ajoutez de nouveaux langages dans `plugins/lsp.lua`

#### Raccourcis
Ajoutez vos raccourcis dans `core/keymaps.lua`

## 🎯 Langages Supportés

- **C/C++** - clangd
- **Python** - pyright
- **JavaScript/TypeScript** - tsserver
- **Go** - gopls
- **Rust** - rust-analyzer
- **PHP** - intelephense
- **Lua** - lua_ls
- **HTML/CSS** - html, cssls, emmet_ls
- **JSON/YAML** - jsonls, yamlls
- **Markdown** - marksman
- **Shell** - bashls
- **Docker** - dockerls
- **SQL** - sqlls

## 🚀 Améliorations Apportées

### ✅ Préservé
- Tous vos raccourcis clavier existants
- Votre dashboard alpha-nvim
- Vos thèmes préférés
- Votre configuration 42

### 🆕 Ajouté
- **nvim-cmp** (remplace coc.nvim)
- **which-key** pour cartographier les raccourcis
- **conform.nvim** pour le formatage automatique
- **trouble.nvim** pour les diagnostics
- **gitsigns** pour l'intégration Git
- **LSP moderne** avec support multi-langages
- **Optimisations de performance**
- **Chargement conditionnel**

## 🔄 Mise à Jour

Pour mettre à jour tous les plugins :
```vim
:Lazy sync
```

## 🐛 Dépannage

### Problèmes courants
1. **Icônes manquantes** : Installez une Nerd Font
2. **LSP ne fonctionne pas** : Vérifiez que Mason a installé les serveurs
3. **Performance lente** : Vérifiez les gros fichiers avec `:checkhealth`

### Commandes utiles
- `:checkhealth` - Vérifier la santé de Neovim
- `:Lazy` - Interface de gestion des plugins
- `:Mason` - Gestionnaire de serveurs LSP
- `:Telescope` - Recherche globale

## 📝 Notes

- Cette configuration est optimisée pour les développeurs
- Tous les raccourcis existants sont préservés
- Le dashboard est maintenant plus moderne et fonctionnel
- La performance a été améliorée avec le chargement à la demande

## 🤝 Contribution

Les suggestions d'amélioration sont les bienvenues ! N'hésitez pas à ouvrir une issue ou une pull request. 