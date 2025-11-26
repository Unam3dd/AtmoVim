-- Configuration pour asm_lsp (Assembly Language Server)

return {
  filetypes = { "asm", "s", "S" },
  settings = {
    asm_lsp = {
      completion = { enable = true },
      diagnostics = { enable = true },
      hover = { enable = true },
    },
  },
}
