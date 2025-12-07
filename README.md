# 🚀 Configuration Neovim Moderne 2025

Une configuration Neovim moderne, rapide et modulaire utilisant les dernières bonnes pratiques de 2025, développée avec ❤️ par **Unam3dd** et **0x7c00**.

---

## ✨ Fonctionnalités Principales

### 🎨 Interface & Design
- **🎭 Dashboard élégant** avec `alpha-nvim` - Accueil personnalisé avec bannières aléatoires
- **📊 Barre de statut moderne** avec `lualine` - Affichage d'informations en temps réel
- **📑 Onglets intelligents** avec `bufferline` - Gestion avancée des buffers
- **🎨 50+ thèmes** avec `themery` - Sélection facile via `<C-T>`
- **🔔 Notifications élégantes** avec `nvim-notify` - Remplace les messages vim par défaut
- **🎯 Icônes** avec `nvim-web-devicons` - Support complet des icônes de fichiers

### 💡 Intelligence de Code
- **🧠 Complétion intelligente** avec `nvim-cmp` - Auto-complétion contextuelle
- **🔧 LSP moderne** avec `mason.nvim` + `lspconfig` - Support multi-langages
- **📝 Formatage automatique** avec `conform.nvim` - Formatage à la demande
- **⚠️ Diagnostics avancés** avec `trouble.nvim` - Visualisation des erreurs
- **📋 Snippets** avec `LuaSnip` - Snippets personnalisés et VSCode
- **✍️ Signatures LSP** avec `lsp_signature` - Aide contextuelle en temps réel
- **🤖 Copilot Chat** avec `CopilotChat.nvim` - Assistant IA intégré

### 🧭 Navigation & Recherche
- **🔍 Recherche puissante** avec `telescope.nvim` - Recherche de fichiers, grep, buffers
- **🌳 Explorateur de fichiers** avec `neo-tree` - Navigation moderne des fichiers
- **⌨️ Cartographie des raccourcis** avec `which-key` - Aide contextuelle pour les raccourcis
- **📚 Syntaxe avancée** avec `treesitter` - Coloration syntaxique améliorée

### ⚡ Performance & Outils
- **⚙️ Gestion des plugins** avec `lazy.nvim` - Chargement à la demande
- **💻 Terminal intégré** avec `toggleterm` - Terminal flottant/horizontal/vertical
- **🎨 Formatage Markdown** avec `render-markdown` - Prévisualisation markdown
- **🚀 Animations fun** avec `duck.nvim` - Fusées et messages motivants

---

## 🛠️ Installation

### Prérequis
- **Neovim 0.9.0+** (recommandé : dernière version)
- **Nerd Fonts** (pour les icônes) - [Télécharger ici](https://www.nerdfonts.com/)
- **Git** (pour le clonage des plugins)
- **Node.js** (pour certains formatters LSP)

### Installation Rapide

1. **Clonez ce dépôt** :
```bash
git clone <votre-repo> ~/.config/nvim
```

2. **Lancez Neovim** :
```bash
nvim
```

3. **Les plugins s'installeront automatiquement** via `lazy.nvim` ✨

---

## ⌨️ Raccourcis Clavier

### 🎯 Leader Key
Le leader key est défini sur **`<Space>`** (barre d'espace)

### 📁 Navigation & Fichiers

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<C-n>` | Neotree reveal | Afficher l'explorateur de fichiers |
| `<leader>e` | Neotree toggle | Basculer l'explorateur |
| `<leader>ff` | Telescope find_files | 🔍 Rechercher des fichiers |
| `<leader>fg` | Telescope live_grep | 🔎 Recherche dans le contenu |
| `<leader>fb` | Telescope buffers | 📄 Lister les buffers |
| `<leader>fr` | Telescope oldfiles | 📜 Fichiers récents |
| `<leader>fh` | Telescope help_tags | ❓ Aide |
| `<leader>fc` | Telescope colorscheme | 🎨 Changer de thème |
| `<leader>fk` | Telescope keymaps | ⌨️ Voir les raccourcis |

### 📄 Gestion des Buffers

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<Tab>` | BufferLineCycleNext | ➡️ Buffer suivant |
| `<S-Tab>` | BufferLineCyclePrev | ⬅️ Buffer précédent |
| `<leader>bd` | Delete buffer (safe) | 🗑️ Supprimer le buffer courant |
| `<A-d>` | Delete buffer (safe) | 🗑️ Alternative Alt+D |
| `<leader>bo` | BufferLineCloseOthers | 🔒 Fermer les autres buffers |

### 🪟 Gestion des Fenêtres

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<C-V>` | Split vertical | 📊 Diviser verticalement |
| `<C-h>` | Split horizontal | 📈 Diviser horizontalement |
| `<C-Right>` / `<C-Left>` | Navigation | ➡️⬅️ Naviguer entre fenêtres |
| `<C-Up>` / `<C-Down>` | Navigation | ⬆️⬇️ Naviguer entre fenêtres |
| `<S-Right>` / `<S-Left>` | Navigation | Alternative navigation |
| `<S-Up>` / `<S-Down>` | Navigation | Alternative navigation |
| `<leader>wh` | Window left | ⬅️ Fenêtre gauche |
| `<leader>wj` | Window down | ⬇️ Fenêtre bas |
| `<leader>wk` | Window up | ⬆️ Fenêtre haut |
| `<leader>wl` | Window right | ➡️ Fenêtre droite |
| `<leader>wv` | Split vertical | 📊 Diviser verticalement |
| `<leader>ws` | Split horizontal | 📈 Diviser horizontalement |
| `<leader>wc` | Close window | ❌ Fermer la fenêtre |
| `<leader>wo` | Close others | 🔒 Fermer les autres |
| `<leader>w=` | Equalize | ⚖️ Égaliser les tailles |
| `<C-r><Up/Down/Left/Right>` | Resize | 🔄 Redimensionner |

### 💻 Terminal

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<C-t>` | ToggleTerm | 🔄 Basculer le terminal |
| `<leader>tt` | ToggleTerm | 🔄 Basculer le terminal |
| `<leader>tf` | ToggleTerm float | 🎈 Terminal flottant |
| `<leader>th` | ToggleTerm horizontal | 📊 Terminal horizontal |
| `<leader>tv` | ToggleTerm vertical | 📈 Terminal vertical |
| `<Esc>` (dans terminal) | Exit terminal | Sortir du mode terminal |

### 🔧 LSP (Language Server Protocol)

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `gd` | Go to definition | 📍 Aller à la définition |
| `gr` | References | 🔗 Voir les références |
| `gi` | Implementation | 💡 Voir l'implémentation |
| `gt` | Type definition | 📝 Définition de type |
| `K` | Hover | ℹ️ Aide contextuelle |
| `<C-k>` | Signature help | ✍️ Aide de signature |
| `<leader>rn` | Rename | ✏️ Renommer |
| `<leader>ca` | Code actions | ⚡ Actions de code |
| `<leader>f` | Format | 🎨 Formater le buffer |
| `<leader>ld` | Workspace diagnostics | ⚠️ Diagnostics workspace |
| `<leader>lr` | LSP Restart | 🔄 Redémarrer LSP |
| `<leader>li` | LSP Info | ℹ️ Informations LSP |

### ⚠️ Diagnostics & Troubleshooting

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<leader>xx` | Trouble diagnostics | 🔍 Diagnostics (Trouble) |
| `<leader>xX` | Buffer diagnostics | 📄 Diagnostics du buffer |
| `<leader>cs` | Trouble symbols | 🔍 Symboles (Trouble) |
| `<leader>cl` | LSP definitions | 📚 Définitions/Références LSP |
| `<leader>xL` | Location list | 📍 Liste de localisation |
| `<leader>xQ` | Quickfix list | 📋 Liste quickfix |

### 🤖 Copilot Chat

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<leader>zc` | CopilotChat | 💬 Chat avec Copilot |
| `<leader>ze` | CopilotChatExplain | 📖 Expliquer le code (visuel) |
| `<leader>zr` | CopilotChatReview | 👀 Réviser le code (visuel) |
| `<leader>zf` | CopilotChatFix | 🔧 Corriger le code (visuel) |
| `<leader>zo` | CopilotChatOptimize | ⚡ Optimiser le code (visuel) |
| `<leader>zd` | CopilotChatDocs | 📝 Générer documentation (visuel) |
| `<leader>zt` | CopilotChatTests | 🧪 Générer tests (visuel) |
| `<leader>zm` | CopilotChatCommit | 📝 Message de commit |
| `<leader>zs` | CopilotChatCommit | 📝 Commit pour sélection (visuel) |

### 🔔 Notifications

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<leader>un` | Dismiss all | ❌ Fermer toutes les notifications |
| `<leader>uh` | Notification history | 📜 Historique des notifications |

### 🎨 Thèmes

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<C-T>` | Themery | 🎨 Basculer entre les thèmes |

### 🔌 Plugins

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<leader>pi` | Lazy install | ⬇️ Installer les plugins |
| `<leader>pu` | Lazy update | ⬆️ Mettre à jour les plugins |
| `<leader>ps` | Lazy sync | 🔄 Synchroniser les plugins |
| `<leader>pc` | Lazy clean | 🧹 Nettoyer les plugins |
| `<leader>pl` | Lazy log | 📋 Log des plugins |

### 🚀 Fun & Animations

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<leader>dd` | Rocket launch | 🚀 Lancer la fusée ! |

### 📝 Édition

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<C-s>` | Save | 💾 Sauvegarder |
| `<C-q>` | Quit | ❌ Quitter |
| `<C-x>` | Quit all | ❌ Quitter tout |
| `<C-z>` | Undo | ↶ Annuler |
| `<C-Left>` | Word backward | ⬅️ Mot précédent |
| `<C-Right>` | Word forward | ➡️ Mot suivant |
| `<Tab>` | Indent | Indenter (mode visuel) |
| `<C-Space>` | Complete | ✨ Déclencher complétion |
| `<Tab>` (insert) | Next item / Expand snippet | ➡️ Item suivant / Snippet |
| `<S-Tab>` (insert) | Prev item / Jump snippet | ⬅️ Item précédent / Snippet |
| `<CR>` | Confirm | ✅ Confirmer sélection |
| `<C-e>` | Abort | ❌ Annuler complétion |

### 🎯 Formatage

| Raccourci | Action | Description |
|-----------|--------|-------------|
| `<leader>ft` | Format buffer | 🎨 Formater le buffer |

---

## 📦 Plugins Détaillés

### 🎨 Interface

#### **alpha-nvim** - Dashboard
- Dashboard personnalisé avec bannières aléatoires
- Boutons d'accès rapide aux fonctionnalités principales
- Affiché automatiquement au démarrage

#### **lualine** - Barre de statut
- Affichage du mode, hostname, date/heure
- Informations Git (branche, diff, diagnostics)
- Nom de fichier, taille, encodage, type
- Progression et position dans le fichier
- Messages fun (fusées, messages aléatoires)

#### **bufferline** - Onglets
- Onglets modernes avec icônes
- Diagnostics intégrés
- Fermeture sécurisée des buffers
- Navigation fluide entre buffers

#### **nvim-notify** - Notifications
- Remplace les messages vim par défaut
- Animations élégantes
- Historique des notifications (via Telescope)
- Notifications de sauvegarde automatiques

#### **themery** - Gestionnaire de thèmes
- 50+ thèmes préconfigurés
- Prévisualisation en direct
- Basculer facilement entre thèmes

### 💡 Intelligence

#### **nvim-cmp** - Complétion
- Auto-complétion contextuelle
- Sources multiples : LSP, snippets, buffer, path
- Intégration avec LuaSnip
- Interface moderne avec bordures arrondies

#### **nvim-lspconfig** - LSP
- Support de 15+ langages
- Configuration automatique via Mason
- Diagnostics en temps réel
- Actions de code contextuelles

#### **conform.nvim** - Formatage
- Formatage à la demande
- Support multi-formatters par langage
- Formatage automatique désactivé (configurable)

#### **trouble.nvim** - Diagnostics
- Visualisation organisée des diagnostics
- Quickfix et location list
- Symboles et références LSP

#### **lsp_signature** - Signatures
- Affichage automatique des signatures
- Fenêtre flottante au-dessus de la ligne
- Aide contextuelle pendant la saisie

#### **CopilotChat.nvim** - IA
- Chat avec Copilot
- Expliquer, réviser, corriger le code
- Générer documentation et tests
- Messages de commit automatiques

### 🧭 Navigation

#### **telescope.nvim** - Recherche
- Recherche de fichiers ultra-rapide
- Live grep (recherche dans le contenu)
- Gestion des buffers
- Fichiers récents
- Extensions (notify, etc.)

#### **neo-tree** - Explorateur
- Explorateur de fichiers moderne
- Suivi du fichier courant
- Prévisualisation des fichiers
- Support Git intégré

#### **which-key** - Aide contextuelle
- Affiche les raccourcis disponibles
- Groupement logique des commandes
- Interface moderne avec icônes

#### **treesitter** - Syntaxe
- Coloration syntaxique avancée
- Indentation intelligente
- Folding automatique
- Support de 20+ langages

### ⚡ Outils

#### **toggleterm** - Terminal
- Terminal intégré
- Modes : flottant, horizontal, vertical
- Navigation facile
- Configuration personnalisable

#### **lazy.nvim** - Gestionnaire
- Chargement à la demande
- Mises à jour automatiques
- Interface de gestion
- Performance optimale

#### **duck.nvim** - Animations
- Animations de fusées au démarrage
- Messages motivants aléatoires
- Compte à rebours fun
- Effets visuels amusants

---

## 🎨 Thèmes Disponibles

### 🌙 Thèmes Sombres

- **Gruvbox** / Gruvbox Baby
- **Catppuccin** (Mocha, Macchiato, Frappe)
- **Tokyonight** (Night, Storm, Moon)
- **Rose Pine** / Rose Pine Moon
- **Kanagawa** (Wave, Dragon)
- **Nightfox** / Duskfox / Nordfox / Terafox
- **Material** (Darker, Deep Ocean, Oceanic, Palenight)
- **GitHub Dark** / Dark Dimmed
- **Sonokai** (Shusia, Atlantis, Andromeda, Maia)
- **Edge Dark**
- **Ayu Dark** / Mirage
- **OneDark**
- **Dracula**
- **Nightfly** / Moonfly
- **VSCode Dark**
- **Monokai Pro** (Classic, Machine, Octagon, Ristretto, Spectrum)
- **Miasma**
- **Poimandres**
- **Nord**
- **Everforest** (Soft, Medium, Hard)
- **Code Dark**
- **Solarized8 Dark**
- **Base16** (Default, Monokai, Ocean, Tomorrow Night)
- **Everblush**

### ☀️ Thèmes Clairs

- **Catppuccin Latte**
- **Tokyonight Day**
- **Rose Pine Dawn**
- **Kanagawa Lotus**
- **Dayfox** / Dawnfox
- **Material Lighter**
- **GitHub Light**
- **Ayu Light**
- **Edge Light**
- **Everforest Light** (Soft, Medium, Hard)
- **PaperColor Light**
- **Solarized8 Light**
- **Gruvbox Light**
- **Base16 Default Light**

**💡 Astuce** : Utilisez `<C-T>` pour ouvrir Themery et basculer entre les thèmes !

---

## 🌍 Langages Supportés

### 🔧 Langages avec LSP

- **C/C++** - `clangd`
- **Python** - `pyright`
- **JavaScript/TypeScript** - `ts_ls`
- **Go** - `gopls`
- **Rust** - `rust_analyzer`
- **Lua** - `lua_ls`
- **HTML/CSS** - `html`, `cssls`
- **JSON/YAML** - `jsonls`, `yamlls`
- **Markdown** - `marksman`
- **Shell** - `bashls`
- **Docker** - `dockerls`
- **SQL** - `sqlls`
- **Assembly** - `asm_lsp`

### 📝 Formatage Automatique

- **Lua** - `stylua`
- **Python** - `isort`, `black`
- **JavaScript/TypeScript** - `prettier`
- **C/C++** - `clang_format`
- **Go** - `gofmt`, `goimports`
- **Rust** - `rustfmt`
- **JSON/YAML/Markdown/HTML/CSS** - `prettier`
- **Shell** - `shfmt`
- **SQL** - `sqlformat`
- **XML** - `xmllint`

---

## 📁 Structure des Fichiers

```
~/.config/nvim/
├── init.lua                 # Point d'entrée principal
├── lazy-lock.json           # Verrouillage des versions
├── coc-settings.json        # Configuration CoC (legacy)
│
├── lua/
│   ├── config/
│   │   ├── init.lua         # Configuration principale
│   │   ├── lazy.lua         # Bootstrap lazy.nvim
│   │   ├── options.lua      # Options Neovim
│   │   ├── keymaps.lua      # Raccourcis globaux
│   │   └── dashboard.lua    # Configuration dashboard
│   │
│   ├── lsp/
│   │   ├── init.lua         # Configuration LSP principale
│   │   └── servers/         # Configurations par serveur
│   │       ├── asm_lsp.lua
│   │       ├── bashls.lua
│   │       ├── clangd.lua
│   │       ├── cssls.lua
│   │       ├── dockerls.lua
│   │       ├── gopls.lua
│   │       ├── html.lua
│   │       ├── jsonls.lua
│   │       ├── lua_ls.lua
│   │       ├── marksman.lua
│   │       ├── pyright.lua
│   │       ├── rust_analyzer.lua
│   │       ├── sqlls.lua
│   │       ├── ts_ls.lua
│   │       └── yamlls.lua
│   │
│   └── plugins/
│       ├── 42header.lua     # En-têtes 42
│       ├── alpha.lua         # Dashboard
│       ├── autopairs.lua     # Paires automatiques
│       ├── bufferline.lua    # Onglets
│       ├── cmp.lua           # Complétion
│       ├── colorschemes.lua  # Thèmes
│       ├── conform.lua       # Formatage
│       ├── copilot.lua       # Copilot Chat
│       ├── cord.lua          # Plugin custom
│       ├── duck.lua          # Animations fun
│       ├── lsp_signature.lua # Signatures LSP
│       ├── lualine.lua       # Barre de statut
│       ├── markdown.lua      # Prévisualisation markdown
│       ├── neotree.lua       # Explorateur fichiers
│       ├── notify.lua        # Notifications
│       ├── telescope.lua     # Recherche
│       ├── themery.lua       # Gestionnaire thèmes
│       ├── toggleterm.lua    # Terminal
│       ├── treesitter.lua    # Syntaxe avancée
│       ├── trouble.lua       # Diagnostics
│       └── which-key.lua     # Aide raccourcis
│
└── snippets/                 # Snippets personnalisés
    ├── c.lua
    └── README.md
```

---

## ⚙️ Configuration

### 🎨 Changer de Thème

Utilisez `<C-T>` pour ouvrir Themery et sélectionner un thème, ou modifiez directement dans votre configuration :

```lua
vim.cmd.colorscheme "tokyonight-night"
```

### 🔧 Personnaliser les Raccourcis

Les raccourcis globaux sont dans `lua/config/keymaps.lua`.  
Les raccourcis avec leader sont configurés dans `lua/plugins/which-key.lua`.

### 📝 Ajouter un Langage LSP

1. Ajoutez le serveur dans `lua/lsp/init.lua` (liste `servers`)
2. Créez un fichier de configuration dans `lua/lsp/servers/nom_serveur.lua`
3. Redémarrez Neovim - Mason installera automatiquement le serveur

### 🎯 Personnaliser les Options

Modifiez `lua/config/options.lua` pour ajuster :
- Numérotation des lignes
- Taille des tabs
- Comportement de recherche
- Et bien plus...

---

## 🔄 Mise à Jour

### Mettre à jour tous les plugins
```vim
:Lazy sync
```

### Mettre à jour un plugin spécifique
```vim
:Lazy update <nom-plugin>
```

### Voir les mises à jour disponibles
```vim
:Lazy
```

---

## 🐛 Dépannage

### Problèmes Courants

#### ❌ Icônes manquantes
**Solution** : Installez une Nerd Font depuis [nerdfonts.com](https://www.nerdfonts.com/) et configurez-la dans votre terminal.

#### ⚠️ LSP ne fonctionne pas
**Solution** : 
1. Vérifiez que Mason a installé les serveurs : `:Mason`
2. Vérifiez les logs LSP : `:LspInfo`
3. Redémarrez le LSP : `<leader>lr`

#### 🐌 Performance lente
**Solution** :
1. Vérifiez la santé : `:checkhealth`
2. Vérifiez les gros fichiers avec `:checkhealth`
3. Désactivez les plugins non utilisés

#### 🔔 Notifications trop nombreuses
**Solution** : 
- Fermez toutes les notifications : `<leader>un`
- Consultez l'historique : `<leader>uh`

### Commandes Utiles

| Commande | Description |
|----------|-------------|
| `:checkhealth` | Vérifier la santé de Neovim |
| `:Lazy` | Interface de gestion des plugins |
| `:Mason` | Gestionnaire de serveurs LSP |
| `:Telescope` | Recherche globale |
| `:LspInfo` | Informations LSP |
| `:LspRestart` | Redémarrer LSP |
| `:Trouble` | Ouvrir Trouble |
| `:WhichKey` | Afficher tous les raccourcis |

---

## 🎯 Fonctionnalités Spéciales

### 🚀 Animations de Fusée
- Lancement automatique au démarrage
- Relance toutes les 5 minutes
- Messages motivants aléatoires toutes les 60 secondes
- Commande manuelle : `<leader>dd`

### 💾 Notifications de Sauvegarde
- Notification automatique à chaque sauvegarde
- Affiche le nom du fichier sauvegardé
- Icône et message personnalisés

### 🎨 Prévisualisation Markdown
- Support de la prévisualisation markdown
- Intégration avec treesitter

### 🔍 Historique des Notifications
- Accès via Telescope : `<leader>uh`
- Recherche dans l'historique
- Navigation facile

---

## 📝 Notes

- ✅ Cette configuration est optimisée pour les développeurs
- ✅ Tous les raccourcis sont documentés via `which-key`
- ✅ Le dashboard s'affiche automatiquement au démarrage
- ✅ Performance optimisée avec chargement à la demande
- ✅ Support complet de la configuration 42 (en-têtes)
- ✅ Formatage automatique désactivé par défaut (activable)

---

## 🤝 Contribution

Les suggestions d'amélioration sont les bienvenues ! N'hésitez pas à :
- 🐛 Ouvrir une issue pour signaler un bug
- 💡 Proposer une amélioration
- 🔧 Soumettre une pull request

---

## 📜 Licence

Cette configuration est libre d'utilisation et de modification.

---

## 🙏 Remerciements

- **Unam3dd** et **0x7c00** - Développeurs principaux
- Tous les mainteneurs des plugins utilisés
- La communauté Neovim pour l'inspiration

---

**Développée avec ❤️ et 🚀 pour une expérience de développement exceptionnelle !**
