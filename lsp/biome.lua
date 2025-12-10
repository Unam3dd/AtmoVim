-- Configuration pour Biome LSP
-- cf. https://biomejs.dev & exemples de config nvim 0.11 (cmd/filetypes/root_markers)

return {
	cmd = { "biome", "lsp-proxy" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"json",
		"jsonc",
	},
	root_markers = {
		"biome.json",
		"biome.jsonc",
		"package.json",
		"tsconfig.json",
		"jsconfig.json",
		".git",
	},
	settings = {
		-- pour l’instant rien de spécial, Biome lit surtout biome.json
	},
}
