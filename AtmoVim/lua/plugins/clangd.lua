-- Load LSP Clangd

require("lspconfig").clangd.setup({
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  on_attach = function(client, bufnr)
    -- Désactive les inlay hints
    if client.server_capabilities.inlayHintProvider then
      vim.lsp.inlay_hint.enable(bufnr, false)
    end
  end,
})
