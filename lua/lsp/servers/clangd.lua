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
    "--all-scopes-completion",
    "--pch-storage=memory",
    "--log=error",
    "--j=4",
    "--enable-config",
    "--offset-encoding=utf-16",
  },
  capabilities = {
    documentFormattingProvider = false,
    documentRangeFormattingProvider = false,
  },
  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
}
