-- Insert Mode keymap

-- Exit Shortcut
vim.api.nvim_set_keymap('i', '<C-q>', '<ESC>:q!<CR>', { noremap = true })

-- Save Shortcut
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>:w!<CR>', { noremap = true })

-- Normal Mode keymap

-- Exit Shortcut
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { noremap = true })

-- Save Shortcut
vim.api.nvim_set_keymap('n', '<C-s>', ':w!<CR>', { noremap = true })
