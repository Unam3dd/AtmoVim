-- Configuration pour ts_ls (TypeScript Language Server)

return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
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
