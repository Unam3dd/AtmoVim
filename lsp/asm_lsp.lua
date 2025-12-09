-- Configuration pour asm_lsp (Assembly Language Server)

return {
	cmd = { "asm-lsp" },
	filetypes = { "asm", "s", "S" },
	root_markers = { ".git" },
	settings = {
		asm_lsp = {
			completion = { enable = true },
			diagnostics = { enable = true },
			hover = { enable = true },
		},
	},
}
