-- Configuration pour clangd (C/C++ Language Server)

return {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--fallback-style=google",
    "--suggest-missing-includes",
    "--completion-parse=always",
  },
  capabilities = {
    documentFormattingProvider = false,
    documentRangeFormattingProvider = false,
  },
}
