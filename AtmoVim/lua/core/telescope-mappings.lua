-- Specific shortcuts for Telescope
local builtin = require('telescope.builtin')

-- File search
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Search in content' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Open buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help' })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Recent files' })
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, { desc = 'Themes' })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Shortcuts' })

-- Main shortcut for live grep
vim.keymap.set('n', '<leader>s', builtin.live_grep, { desc = 'Live grep' })

-- LSP search
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'LSP definitions' })
vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'LSP references' })
vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = 'LSP implementations' })
vim.keymap.set('n', 'gt', builtin.lsp_type_definitions, { desc = 'LSP type definitions' })

-- Git search
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Git status' })
vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Git commits' })
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Git branches' })

-- Diagnostics search
vim.keymap.set('n', '<leader>dd', builtin.diagnostics, { desc = 'Diagnostics' })

-- Symbols search
vim.keymap.set('n', '<leader>ss', builtin.lsp_document_symbols, { desc = 'Document symbols' })
vim.keymap.set('n', '<leader>sw', builtin.lsp_workspace_symbols, { desc = 'Workspace symbols' }) 