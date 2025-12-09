-- Configuration pour gopls (Go Language Server)

return {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = { "go.work", "go.mod", ".git" },
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
