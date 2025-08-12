-- Mappings pour Comment.nvim qui préservent les anciens raccourcis
local comment = require('Comment')

-- Préserver les anciens raccourcis de commentaires
vim.keymap.set('n', '<C-c>', function()
  comment.toggle.linewise.current()
end, { desc = 'Commenter ligne' })

vim.keymap.set('n', '<A-c>', function()
  comment.toggle.linewise.current()
end, { desc = 'Décommenter ligne' })

vim.keymap.set('v', '<C-c>', function()
  comment.toggle.linewise(vim.fn.visualmode())
end, { desc = 'Commenter sélection' })

vim.keymap.set('v', '<A-c>', function()
  comment.toggle.linewise(vim.fn.visualmode())
end, { desc = 'Décommenter sélection' })

-- Mappings supplémentaires pour les commentaires de blocs
vim.keymap.set('n', '<leader>cb', function()
  comment.toggle.blockwise.current()
end, { desc = 'Commenter bloc' })

vim.keymap.set('v', '<leader>cb', function()
  comment.toggle.blockwise(vim.fn.visualmode())
end, { desc = 'Commenter bloc sélection' }) 