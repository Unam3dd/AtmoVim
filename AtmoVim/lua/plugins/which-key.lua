-- Configuration pour which-key
local wk = require("which-key")

wk.setup({
  plugins = {
    marks = true,
    registers = true,
    spelling = {
      enabled = true,
      suggestions = 20,
    },
  },
  icons = {
    breadcrumb = "»",
    separator = "➜",
    group = "+",
  },
  window = {
    border = "rounded",
    position = "bottom",
    margin = { 1, 0, 1, 0 },
    padding = { 2, 2, 2, 2 },
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 3,
    align = "left",
  },
  -- Activer l'affichage automatique
  triggers = {"<leader>"},
  triggers_blacklist = {
    i = {"j", "k"},
    v = {"j", "k"}
  },
})

-- Map existing shortcuts
wk.register({
  -- Navigation shortcuts
  ["<C-t>"] = { "Terminal" },
  ["<C-q>"] = { "Quit" },
  ["<C-x>"] = { "Quit all" },
  ["<C-s>"] = { "Save" },
  ["<C-V>"] = { "Split vertical" },
  ["<C-h>"] = { "Split horizontal" },
  ["<S-Tab>"] = { "Next buffer" },
  ["<C-u>"] = { "Update" },
  ["<C-z>"] = { "Undo" },
  ["<C-Left>"] = { "Previous word" },
  ["<C-Right>"] = { "Next word" },
  ["<Tab>"] = { "Indent" },
  ["<C-c>"] = { "Comment" },
  ["<A-c>"] = { "Uncomment" },
  
  -- Window navigation
  ["<S-Right>"] = { "Window right" },
  ["<S-Left>"] = { "Window left" },
  ["<S-Up>"] = { "Window up" },
  ["<S-Down>"] = { "Window down" },
  ["<C-Right>"] = { "Window right" },
  ["<C-Left>"] = { "Window left" },
  ["<C-Up>"] = { "Window up" },
  ["<C-Down>"] = { "Window down" },
  
  -- Resize
  ["<C-r><Up>"] = { "Increase height" },
  ["<C-r><Down>"] = { "Decrease height" },
  ["<C-r><Right>"] = { "Decrease width" },
  ["<C-r><Left>"] = { "Increase width" },
  ["<C-r>="] = { "Equalize windows" },
})

-- Load additional mappings directly
require('core.which-key-mappings') 