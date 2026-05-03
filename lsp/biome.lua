-- Configuration pour Biome (Linter et Formatter JavaScript/TypeScript/JSON)

return {
	cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/biome"), "lsp-proxy" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"json",
		"jsonc",
	},
	root_markers = {
		"biome.json",
		"biome.jsonc",
		"package.json",
		".git",
	},
	settings = {},
}
