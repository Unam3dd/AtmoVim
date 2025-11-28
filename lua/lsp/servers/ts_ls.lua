-- Configuration pour ts_ls (TypeScript Language Server)

return {
  cmd = {
    "typescript-language-server",
    "--stdio",
  },
  settings = {
    typescript = {
      suggest = {
        completeFunctionCalls = true,
      },
      format = {
        indentSize = 2,
        tabSize = 2,
        convertTabsToSpaces = true,
      },
      preferences = {
        includePackageJsonAutoImports = "auto",
        includeCompletionsForModuleExports = true,
        includeCompletionsWithInsertText = true,
      },
    },
    javascript = {
      suggest = {
        completeFunctionCalls = true,
      },
      format = {
        indentSize = 2,
        tabSize = 2,
        convertTabsToSpaces = true,
      },
      preferences = {
        includePackageJsonAutoImports = "auto",
        includeCompletionsForModuleExports = true,
        includeCompletionsWithInsertText = true,
      },
    },
  },
}
