-- Insert Mode keymap

-- Exit Shortcut
vim.api.nvim_set_keymap('i', '<C-q>', '<ESC>:q!<CR>', { noremap = true, silent = true})

-- All Exit shortcut
vim.api.nvim_set_keymap('i', '<C-x>', '<ESC>:qa!<CR>', { noremap = true, silent = true })

-- Save Shortcut
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>:w!<CR>', { noremap = true, silent = false})

vim.api.nvim_set_keymap('i', '<C-t>', '<ESC>:ToggleTerm!<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('i', '<S-Tab>', '<ESC>:bnext<CR>', { noremap = true, silent = true})


-- Normal Mode keymap

-- Toggle Terminal
vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm<CR>', { noremap = true, silent = true})

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

-- Switch split window

vim.api.nvim_set_keymap('n', '<S-Right>', '<C-w><Right>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<S-Left>', '<C-w><Left>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<S-Up>', '<C-w><Up>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<S-Down>', '<C-w><Down>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<S-Tab>', ':bnext<CR>', { noremap = true, silent = true})


-- Visual Mode keymap

-- All Exit shortcut

vim.api.nvim_set_keymap('v', '<C-x>', '<ESC>:qa!<CR>', { noremap = true, silent = true })

-- Save shortcut
vim.api.nvim_set_keymap('v', '<C-s>', '<ESC>:w!<CR>', { noremap = true, silent = false})

-- Exit shortcut
vim.api.nvim_set_keymap('v', '<C-q>', '<ESC>:q!<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<C-t>', '<ESC>:ToggleTerm!<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<S-Tab>', '<ESC>:bnext<CR>', { noremap = true, silent = true})
