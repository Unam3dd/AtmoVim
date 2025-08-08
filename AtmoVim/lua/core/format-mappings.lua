-- Formatting mappings with conform.nvim
local conform = require('conform')

-- Format current buffer
vim.keymap.set('n', '<leader>f', function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, { desc = 'Format buffer' })

-- Format current buffer asynchronously
vim.keymap.set('n', '<leader>F', function()
  conform.format({
    lsp_fallback = true,
    async = true,
    timeout_ms = 500,
  })
end, { desc = 'Format buffer (async)' })

-- Format selection
vim.keymap.set('v', '<leader>f', function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, { desc = 'Format selection' })

-- Format with specific formatter
vim.keymap.set('n', '<leader>fp', function()
  conform.format({
    formatters = { "prettier" },
    lsp_fallback = false,
    async = false,
    timeout_ms = 500,
  })
end, { desc = 'Format with Prettier' })

vim.keymap.set('n', '<leader>fb', function()
  conform.format({
    formatters = { "black" },
    lsp_fallback = false,
    async = false,
    timeout_ms = 500,
  })
end, { desc = 'Format with Black' })

vim.keymap.set('n', '<leader>fc', function()
  conform.format({
    formatters = { "clang_format" },
    lsp_fallback = false,
    async = false,
    timeout_ms = 500,
  })
end, { desc = 'Format with Clang Format' })

-- C/C++ specific shortcuts
vim.keymap.set('n', '<leader>cc', function()
  conform.format({
    formatters = { "clang_format" },
    lsp_fallback = false,
    async = false,
    timeout_ms = 500,
  })
end, { desc = 'Format C/C++ file' })

-- Toggle automatic formatting for C/C++
vim.keymap.set('n', '<leader>ct', function()
  local bufnr = vim.api.nvim_get_current_buf()
  local filetype = vim.bo[bufnr].filetype
  if filetype == "c" or filetype == "cpp" then
    -- Enable/disable automatic formatting for this buffer
    vim.b[bufnr].format_on_save = not vim.b[bufnr].format_on_save
    if vim.b[bufnr].format_on_save then
      print("Automatic formatting enabled for this C/C++ file")
    else
      print("Automatic formatting disabled for this C/C++ file")
    end
  end
end, { desc = 'Toggle auto formatting C/C++' }) 