-- Configuration pour gopls (Go Language Server)

return {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
      gofumpt = true,
      diagnosticsDelay = "100ms",
      experimentalPostfixCompletions = true,
      completeUnimported = true,
      usePlaceholders = true,
      deepCompletion = true,
    },
  },
}
