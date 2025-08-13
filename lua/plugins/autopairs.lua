-- Configuration pour nvim-autopairs (autocomplétion des parenthèses, crochets, accolades)
local npairs = require("nvim-autopairs")

npairs.setup({
  check_ts = true, -- Vérifier treesitter
  ts_config = {
    lua = { "string", "source" }, -- Ne pas autocompléter dans les chaînes Lua
    javascript = { "string", "template_string" },
    java = false, -- Désactiver pour Java
    c = { "string", "comment" }, -- Ne pas autocompléter dans les chaînes et commentaires C
    cpp = { "string", "comment" }, -- Ne pas autocompléter dans les chaînes et commentaires C++
  },
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  disable_in_macro = false,
  disable_in_visualblock = false,
  ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
  enable_moveright = true,
  enable_afterquote = true,
  enable_check_bracket_line = false,
  enable_bracket_in_quote = true,
  enable_abbr = false,
  break_undo = true,
  map_cr = true,
  map_bs = true,
  map_c_h = false,
  map_c_w = false,
  fast_wrap = {
    map = '<M-e>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = [=[[%'%"%>%]%)%}%,]]=],
    end_key = '$',
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    check_comma = true,
    highlight = 'Search',
    highlight_grey = 'Comment'
  },
})

-- Intégration avec nvim-cmp
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({
  map_char = { tex = "", sh = "" }
})) 