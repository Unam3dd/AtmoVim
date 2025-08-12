-- Configuration pour nvim-autopairs (autocomplétion des parenthèses, crochets, accolades)
local npairs = require("nvim-autopairs")

npairs.setup({
  check_ts = true, -- Vérifier treesitter
  ts_config = {
    lua = { "string" }, -- Ne pas autocompléter dans les chaînes Lua
    javascript = { "template_string" },
    java = false, -- Désactiver pour Java
  },
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  disable_in_macro = false, -- Désactiver dans les macros
  disable_in_visualblock = false, -- Désactiver dans les blocs visuels
  ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]], "%s+", ""),
  enable_moveright = true,
  enable_afterquote = true, -- Autocompléter après les guillemets
  enable_check_bracket_line = false, -- Ne pas vérifier les lignes de brackets
  enable_bracket_in_quote = true, -- Permettre les brackets dans les quotes
  enable_abbr = false, -- Désactiver les abréviations
  break_undo = true, -- Casser l'undo
  map_cr = true, -- Mapper Enter
  map_bs = true, -- Mapper Backspace
  map_c_h = false, -- Ne pas mapper Ctrl+h
  map_c_w = false, -- Ne pas mapper Ctrl+w
})

-- Intégration avec nvim-cmp
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } })) 