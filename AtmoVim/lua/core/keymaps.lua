-- Insert Mode keymap

-- Exit Shortcut
vim.api.nvim_set_keymap('i', '<C-q>', '<ESC>:q!<CR>', { noremap = true, silent = true})

-- All Exit shortcut
vim.api.nvim_set_keymap('i', '<C-x>', '<ESC>:qa!<CR>', { noremap = true, silent = true })

-- Save Shortcut
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>:w!<CR>', { noremap = true, silent = false})

-- Normal Mode keymap

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

-- Visual Mode keymap

-- All Exit shortcut

vim.api.nvim_set_keymap('v', '<C-x>', '<ESC>:qa!<CR>', { noremap = true, silent = true })

-- Save shortcut
vim.api.nvim_set_keymap('v', '<C-s>', '<ESC>:w!<CR>', { noremap = true, silent = false})

-- Exit shortcut
vim.api.nvim_set_keymap('v', '<C-q>', '<ESC>:q!<CR>', { noremap = true, silent = true})
