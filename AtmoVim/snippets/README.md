# 📝 Snippets Personnalisés

Ce dossier contient vos snippets personnalisés pour Neovim avec LuaSnip.

## 📁 Structure des fichiers

- `all.lua` - Snippets disponibles pour tous les langages
- `lua.lua` - Snippets spécifiques au Lua
- `c.lua` - Snippets spécifiques au C
- `README.md` - Ce fichier d'aide

## 🚀 Comment utiliser les snippets

### Raccourcis clavier
- `<Tab>` - Développer un snippet ou passer au point d'insertion suivant
- `<C-j>` - Passer au point d'insertion suivant
- `<C-k>` - Passer au point d'insertion précédent
- `<C-l>` - Changer de choix (si plusieurs options)
- `<C-h>` - Changer de choix (direction inverse)

### Snippets disponibles

#### Snippets généraux (tous langages)
- `func` - Fonction basique
- `for` - Boucle for
- `if` - Condition if
- `section` - Commentaire de section

#### Snippets Lua
- `req` - require("module")
- `lfunc` - Fonction Lua locale
- `table` - Table Lua
- `module` - Module Lua complet

#### Snippets C
- `main` - Fonction main avec includes
- `func` - Fonction avec documentation Doxygen
- `struct` - Structure avec typedef
- `enum` - Énumération avec typedef
- `if` - Condition if simple
- `ife` - Condition if-else
- `for` - Boucle for
- `while` - Boucle while
- `switch` - Structure switch-case
- `printf` - Fonction printf
- `scanf` - Fonction scanf
- `malloc` - Allocation mémoire avec vérification
- `free` - Libération mémoire
- `guard` - Header guard automatique
- `header` - Include de header
- `section` - Commentaire de section
- `assert` - Assertion
- `ptr` - Déclaration de pointeur

## ✏️ Comment créer vos propres snippets

### 1. Créer un nouveau fichier de snippets

Créez un fichier `nom_du_langage.lua` dans ce dossier :

```lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Votre snippet
local mon_snippet = s("trigger", {
  t("Texte fixe"),
  i(1, "Premier point d'insertion"),
  t(" plus de texte "),
  i(2, "Deuxième point d'insertion"),
})

return {
  mon_snippet,
}
```

### 2. Éléments disponibles

- `s("trigger", {...})` - Définit un snippet avec son déclencheur
- `t("texte")` - Texte fixe
- `i(1, "placeholder")` - Point d'insertion numéroté
- `c(1, {...})` - Choix entre plusieurs options
- `f(function, {...})` - Fonction dynamique

### 3. Exemple complet

```lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node

local function_snippet = s("function", {
  t("function "),
  i(1, "function_name"),
  t("("),
  i(2, "parameters"),
  t(")"),
  t({ "", "\t" }),
  c(3, {
    t("-- TODO: implement function"),
    t("return "),
    t("print(\"Hello World\")"),
  }),
  t({ "", "end"),
})

return {
  function_snippet,
}
```

## 🔧 Intégration avec nvim-cmp

Les snippets sont automatiquement intégrés avec nvim-cmp pour la complétion.

## 📚 Ressources

- [Documentation LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [Friendly Snippets](https://github.com/rafamadriz/friendly-snippets) 