-- Configuration globale LSP
-- Utilise la nouvelle API vim.lsp.config (Neovim 0.11+)

local M = {}

-- Capacités LSP de base
M.capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities.textDocument.completion.completionItem.snippetSupport = true
M.capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- Fonction on_attach globale pour tous les LSP
M.on_attach = function(client, bufnr)
  -- Mappings LSP
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  -- Navigation
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)

  -- Actions
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, bufopts)

  -- Signature help
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)

  -- Buffer local options
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Désactiver le formatage automatique pour C/C++
  local filetype = vim.bo[bufnr].filetype
  if filetype == "c" or filetype == "cpp" then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
    vim.b[bufnr].format_on_save = false
    vim.b[bufnr].autoformat = false
  end
end

-- Handlers personnalisés pour les réponses LSP
M.handlers = {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  }),
}

return M
