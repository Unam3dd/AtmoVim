-- Configuration complète des diagnostics
-- Gère TOUS les diagnostics (LSP, linters, etc.)

local trouble = require('trouble')

-- Configuration globale des diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
  },
})

-- Symboles de diagnostics
local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

-- ============================================================================
-- Keymaps pour diagnostics
-- ============================================================================

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

-- Navigation avec sévérité spécifique
vim.keymap.set('n', '[e', function()
  vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = 'Previous error' })

vim.keymap.set('n', ']e', function()
  vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = 'Next error' })

vim.keymap.set('n', '[w', function()
  vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
end, { desc = 'Previous warning' })

vim.keymap.set('n', ']w', function()
  vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
end, { desc = 'Next warning' })

-- Show diagnostics under cursor (manuel si besoin)
vim.keymap.set('n', '<leader>dh', function()
  vim.diagnostic.open_float(nil, {
    focusable = false,
    close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    border = 'rounded',
    source = 'always',
    prefix = ' ',
    scope = 'cursor',
  })
end, { desc = 'Diagnostic under cursor' })

-- Toggle virtual text diagnostics (SIMPLE)
vim.keymap.set('n', '<leader>dt', function()
  local config = vim.diagnostic.config()
  if config.virtual_text then
    vim.diagnostic.config({ virtual_text = false })
    print("Virtual text diagnostics: OFF")
  else
    vim.diagnostic.config({ 
      virtual_text = {
        enabled = true,
        source = "if_many",
        prefix = "●",
      }
    })
    print("Virtual text diagnostics: ON")
  end
end, { desc = 'Toggle virtual text diagnostics' })

-- Actions on diagnostics
vim.keymap.set('n', '<leader>da', vim.diagnostic.setqflist, { desc = 'Diagnostics in quickfix' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Diagnostics in loclist' })

-- Close trouble
vim.keymap.set('n', '<leader>dc', function()
  trouble.close()
end, { desc = 'Close diagnostics' }) 