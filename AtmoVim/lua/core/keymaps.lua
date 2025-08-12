-- Insert Mode keymap

-- Exit Shortcut
vim.api.nvim_set_keymap('i', '<C-q>', '<ESC>:q!<CR>', { noremap = true, silent = true})

-- All Exit shortcut
vim.api.nvim_set_keymap('i', '<C-x>', '<ESC>:qa!<CR>', { noremap = true, silent = true })

-- Save Shortcut
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>:w!<CR>', { noremap = true, silent = false})

vim.api.nvim_set_keymap('i', '<C-t>', '<ESC>:ToggleTerm!<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('i', '<S-Tab>', '<ESC>:bnext<CR>', { noremap = true, silent = true})

-- ============================================================================
-- MAPPINGS POUR LES MENUS ET COMPLÉTIONS
-- ============================================================================

-- Mappings pour les menus de commande (comme :colorscheme)
-- Utilisation de noremap = false pour permettre la récursion
vim.api.nvim_set_keymap('c', '<Up>', '<C-p>', { noremap = false, silent = true })
vim.api.nvim_set_keymap('c', '<Down>', '<C-n>', { noremap = false, silent = true })

-- Mappings pour les menus de sélection (mode select)
vim.api.nvim_set_keymap('s', '<Up>', '<C-p>', { noremap = false, silent = true })
vim.api.nvim_set_keymap('s', '<Down>', '<C-n>', { noremap = false, silent = true })

-- Mappings pour les menus de complétion en mode insertion
-- Note: Ces mappings peuvent entrer en conflit avec d'autres plugins
-- vim.api.nvim_set_keymap('i', '<Up>', '<C-p>', { noremap = false, silent = true })
-- vim.api.nvim_set_keymap('i', '<Down>', '<C-n>', { noremap = false, silent = true })

-- ============================================================================
-- NORMAL MODE KEYMAPS
-- ============================================================================

-- Toggle Terminal
vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Exit Shortcut
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { noremap = true, silent = true})

-- All Exit shortcut

vim.api.nvim_set_keymap('n', '<C-x>', ':qa!<CR>', { noremap = true, silent = true })

-- Save Shortcut
vim.api.nvim_set_keymap('n', '<C-s>', ':w!<CR>', { noremap = true, silent = false})

-- Vertical Split
vim.api.nvim_set_keymap('n', '<C-V>', ':vsplit<CR>', { noremap = true, silent = true})

-- Horizontal Split
vim.api.nvim_set_keymap('n', '<C-h>', ':split<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-r><Up>', '<C-w>+<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r><Down>', '<C-w>-<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r><Right>', '<C-w><<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r><Left>', '<C-w>><CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-r>=', '<C-w>=<CR>', { noremap = true, silent = true })

-- Switch split window

vim.api.nvim_set_keymap('n', '<S-Right>', '<C-w><Right>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<S-Left>', '<C-w><Left>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<S-Up>', '<C-w><Up>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<S-Down>', '<C-w><Down>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<C-Right>', '<C-w><Right>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-Left>', '<C-w><Left>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-Up>', '<C-w><Up>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-Down>', '<C-w><Down>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<S-Tab>', ':bnext<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-u>', ':AtmoVimUpdate<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-z>', 'u', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-Left>', 'b', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-Right>', 'w', { noremap = true, silent = true })

-- Tab mapping removed to allow LuaSnip to work
-- vim.api.nvim_set_keymap('n', '<Tab>', '<ESC>:><CR>', { noremap = true, silent = true})

-- Comments (replaced by Comment.nvim)
-- vim.api.nvim_set_keymap('n', '<C-c>', '<ESC>:s/^/\\/\\/<CR>', { noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<A-c>', '<ESC>:s/^\\/\\///<CR>', { noremap = true, silent = true})

-- ============================================================================
-- VISUAL MODE KEYMAPS
-- ============================================================================

-- All Exit shortcut

vim.api.nvim_set_keymap('v', '<C-x>', '<ESC>:qa!<CR>', { noremap = true, silent = true })

-- Save shortcut
vim.api.nvim_set_keymap('v', '<C-s>', '<ESC>:w!<CR>', { noremap = true, silent = false})

-- Exit shortcut
vim.api.nvim_set_keymap('v', '<C-q>', '<ESC>:q!<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<C-t>', '<ESC>:ToggleTerm!<CR>', { noremap = true, silent = true})

-- Other keymap

vim.api.nvim_set_keymap('v', '<S-Tab>', '<ESC>:bnext<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<Tab>', '><CR>', { noremap = true, silent = true})

-- ============================================================================
-- CONFIGURATION GLOBALE POUR LES MENUS
-- ============================================================================

-- Configuration déjà définie plus haut dans le fichier

-- Comment keymap

-- Note: which-key is now loaded in init.lua before keymaps
-- to avoid mapping conflicts

-- Load Telescope mappings
require('core.telescope-mappings')

-- Load comment mappings
require('core.comment-mappings')

-- Load formatting mappings
require('core.format-mappings')

-- Load diagnostic mappings
require('core.diagnostic-mappings')


