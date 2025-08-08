-- Mappings for Comment.nvim that preserve old shortcuts
local comment = require('Comment')

-- Preserve old comment shortcuts
vim.keymap.set('n', '<C-c>', function()
  comment.toggle.linewise.current()
end, { desc = 'Comment line' })

vim.keymap.set('n', '<A-c>', function()
  comment.toggle.linewise.current()
end, { desc = 'Uncomment line' })

vim.keymap.set('v', '<C-c>', function()
  comment.toggle.linewise(vim.fn.visualmode())
end, { desc = 'Comment selection' })

vim.keymap.set('v', '<A-c>', function()
  comment.toggle.linewise(vim.fn.visualmode())
end, { desc = 'Uncomment selection' })

-- Additional mappings for block comments
vim.keymap.set('n', '<leader>cb', function()
  comment.toggle.blockwise.current()
end, { desc = 'Comment block' })

vim.keymap.set('v', '<leader>cb', function()
  comment.toggle.blockwise(vim.fn.visualmode())
end, { desc = 'Comment block selection' }) 