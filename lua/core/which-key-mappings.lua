-- Additional mappings for which-key
local wk = require("which-key")

-- Telescope mappings
wk.register({
  f = {
    name = "Files",
    f = { "<cmd>Telescope find_files<CR>", "Find files" },
    g = { "<cmd>Telescope live_grep<CR>", "Live grep" },
    b = { "<cmd>Telescope buffers<CR>", "Buffers" },
    h = { "<cmd>Telescope help_tags<CR>", "Help" },
    r = { "<cmd>Telescope oldfiles<CR>", "Recent files" },
    c = { "<cmd>Telescope colorscheme<CR>", "Colorschemes" },
    k = { "<cmd>Telescope keymaps<CR>", "Keymaps" },
  },
}, { prefix = "<leader>" })

-- Git mappings
wk.register({
  g = {
    name = "Git",
    s = { "<cmd>Gitsigns stage_hunk<CR>", "Stage hunk" },
    u = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Unstage hunk" },
    r = { "<cmd>Gitsigns reset_hunk<CR>", "Reset hunk" },
    R = { "<cmd>Gitsigns reset_buffer<CR>", "Reset buffer" },
    p = { "<cmd>Gitsigns preview_hunk<CR>", "Preview hunk" },
    b = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Toggle blame" },
    d = { "<cmd>Gitsigns diffthis<CR>", "Diff this" },
  },
}, { prefix = "<leader>" })

-- LSP mappings
wk.register({
  l = {
    name = "LSP",
    d = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "Workspace diagnostics" },
    r = { "<cmd>LspRestart<CR>", "Restart LSP" },
    i = { "<cmd>LspInfo<CR>", "LSP info" },
  },
}, { prefix = "<leader>" })

-- Buffer mappings
wk.register({
  b = {
    name = "Buffers",
    n = { "<cmd>bnext<CR>", "Next buffer" },
    p = { "<cmd>bprevious<CR>", "Previous buffer" },
    d = { "<cmd>bdelete<CR>", "Delete buffer" },
    D = { "<cmd>bdelete!<CR>", "Force delete buffer" },
  },
}, { prefix = "<leader>" })

-- Window mappings
wk.register({
  w = {
    name = "Windows",
    h = { "<C-w>h", "Window left" },
    j = { "<C-w>j", "Window down" },
    k = { "<C-w>k", "Window up" },
    l = { "<C-w>l", "Window right" },
    v = { "<C-w>v", "Split vertical" },
    s = { "<C-w>s", "Split horizontal" },
    c = { "<C-w>c", "Close window" },
    o = { "<C-w>o", "Close others" },
    ["="] = { "<C-w>=", "Equalize" },
  },
}, { prefix = "<leader>" })

-- Terminal mappings
wk.register({
  t = {
    name = "Terminal",
    t = { "<cmd>ToggleTerm<CR>", "Toggle terminal" },
    f = { "<cmd>ToggleTerm direction=float<CR>", "Float terminal" },
    h = { "<cmd>ToggleTerm direction=horizontal<CR>", "Horizontal terminal" },
    v = { "<cmd>ToggleTerm direction=vertical<CR>", "Vertical terminal" },
  },
}, { prefix = "<leader>" })

-- Explorer mappings
wk.register({
  e = {
    name = "Explorer",
    e = { "<cmd>Neotree toggle<CR>", "Toggle Neo-tree" },
    f = { "<cmd>Neotree focus<CR>", "Focus Neo-tree" },
    c = { "<cmd>Neotree close<CR>", "Close Neo-tree" },
  },
}, { prefix = "<leader>" })

-- Search mappings
wk.register({
  s = {
    name = "Search",
    s = { "<cmd>Telescope live_grep<CR>", "Live grep" },
    f = { "<cmd>Telescope find_files<CR>", "Find files" },
    b = { "<cmd>Telescope buffers<CR>", "Buffers" },
    h = { "<cmd>Telescope help_tags<CR>", "Help" },
  },
}, { prefix = "<leader>" })

-- Diagnostics mappings
wk.register({
  d = {
    name = "Diagnostics",
    d = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "Workspace diagnostics" },
    w = { "<cmd>TroubleToggle document_diagnostics<CR>", "Document diagnostics" },
    q = { "<cmd>TroubleToggle quickfix<CR>", "Quickfix" },
    l = { "<cmd>TroubleToggle loclist<CR>", "Location list" },
  },
}, { prefix = "<leader>" })

-- Plugin mappings
wk.register({
  p = {
    name = "Plugins",
    i = { "<cmd>Lazy install<CR>", "Install plugins" },
    u = { "<cmd>Lazy update<CR>", "Update plugins" },
    s = { "<cmd>Lazy sync<CR>", "Sync plugins" },
    c = { "<cmd>Lazy clean<CR>", "Clean plugins" },
    l = { "<cmd>Lazy log<CR>", "Plugin log" },
  },
}, { prefix = "<leader>" }) 