-- Load LSP Clangd

require("lspconfig").clangd.setup({
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  on_attach = function(client, bufnr)
    -- Pas d'inlay hints pour éviter les erreurs
  end,
})
