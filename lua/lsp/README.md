# Configuration LSP Modulaire

Architecture moderne et évolutive pour la configuration LSP dans Neovim 0.11+.

## 📁 Structure

```
lua/lsp/
├── init.lua          # Point d'entrée principal
├── config.lua        # Configuration globale (capabilities, on_attach, handlers)
├── servers.lua       # Index qui importe tous les serveurs
├── servers/          # Un fichier par serveur LSP
│   ├── clangd.lua
│   ├── lua_ls.lua
│   ├── rust_analyzer.lua
│   ├── gopls.lua
│   ├── pyright.lua
│   ├── ts_ls.lua
│   └── ...           # 15 serveurs configurés
└── README.md         # Cette documentation
```

## 🚀 Utilisation

### Chargement initial

Dans ton `init.lua` principal :

```lua
require('lsp')
```

C'est tout ! La configuration se charge automatiquement avec un délai de 1 seconde.

### Ajouter un nouveau serveur LSP

**Étape 1** - Créer le fichier `servers/new_server.lua` :

```lua
-- Configuration pour new_server
return {
  cmd = { "custom-command" },
  filetypes = { "customft" },
  settings = {
    -- Configuration spécifique
  },
}
```

**Étape 2** - L'ajouter dans `servers.lua` :

```lua
M.servers = {
  -- ... serveurs existants ...

  -- Ton nouveau serveur
  new_server = require("lsp.servers.new_server"),
}
```

C'est tout ! Le serveur sera automatiquement configuré au redémarrage.

### Personnaliser on_attach

Dans `config.lua`, modifie la fonction `M.on_attach` :

```lua
M.on_attach = function(client, bufnr)
  -- Tes keymaps personnalisés
  -- Tes configurations spécifiques
end
```

### Handler spécifique pour un serveur

Dans `init.lua`, utilise les handlers spécifiques :

```lua
mason_lspconfig.setup_handlers({
  ["rust_analyzer"] = function()
    require("rust-tools").setup({})
  end,
})
```

## ✨ Avantages

- **Modulaire** : Chaque responsabilité dans son fichier
- **Évolutif** : Ajouter un serveur = ajouter une entrée
- **Maintenable** : Fichiers < 350 lignes
- **Moderne** : Prêt pour vim.lsp.config (future migration)
- **Propre** : Séparation claire config globale / serveurs

## 🔧 Migration future vers vim.lsp.config

L'architecture est prête pour une migration vers la nouvelle API native :

```lua
-- Remplacer dans init.lua
vim.lsp.config[server_name] = config
vim.lsp.enable(server_name)
```

## 📚 Serveurs supportés

Voir `servers.lua` pour la liste complète :
- Lua (lua_ls)
- C/C++ (clangd)
- Python (pyright)
- Rust (rust_analyzer)
- Go (gopls)
- TypeScript (ts_ls)
- Et bien d'autres...

## 🐛 Debug

Pour voir les serveurs actifs :

```vim
:LspInfo
```

Pour voir les logs :

```vim
:LspLog
```
