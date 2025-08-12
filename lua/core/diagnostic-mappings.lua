-- Mappings for diagnostics with trouble.nvim
local trouble = require('trouble')

-- Open workspace diagnostics
vim.keymap.set('n', '<leader>dd', function()
  trouble.toggle('workspace_diagnostics')
end, { desc = 'Workspace diagnostics' })

-- Open document diagnostics
vim.keymap.set('n', '<leader>dw', function()
  trouble.toggle('document_diagnostics')
end, { desc = 'Document diagnostics' })

-- Open quickfix list
vim.keymap.set('n', '<leader>dq', function()
  trouble.toggle('quickfix')
end, { desc = 'Quickfix' })

-- Open location list
vim.keymap.set('n', '<leader>dl', function()
  trouble.toggle('loclist')
end, { desc = 'Location list' })

-- Navigation in diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })

-- Show diagnostics under cursor
vim.keymap.set('n', '<leader>dh', vim.diagnostic.open_float, { desc = 'Diagnostic under cursor' })

-- Actions on diagnostics
vim.keymap.set('n', '<leader>da', vim.diagnostic.setqflist, { desc = 'Diagnostics in quickfix' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Diagnostics in loclist' })

-- Close trouble
vim.keymap.set('n', '<leader>dc', function()
  trouble.close()
end, { desc = 'Close diagnostics' }) 