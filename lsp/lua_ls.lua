-- Configuration pour lua_ls (Lua Language Server)

return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- Ne charger que les bibliothèques essentielles pour de meilleures performances
				library = {
					vim.env.VIMRUNTIME,
				},
				checkThirdParty = false,
			},
			telemetry = { enable = false },
			completion = {
				callSnippet = "Replace",
			},
		},
	},
}
