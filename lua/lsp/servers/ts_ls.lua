-- Configuration pour ts_ls (TypeScript Language Server)

return {
  cmd = {
    "typescript-language-server",
    "--stdio",
  },
  root_dir = function(fname)
    local root = vim.fs.root(fname, {
      "package.json",
      "tsconfig.json",
      "jsconfig.json",
      ".git",
    })
    return root or vim.fn.getcwd()
  end,
  single_file_support = true,
  settings = {
    implicitProjectConfiguration = {
      checkJs = true,
      experimentalDecorators = true,
    },
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
