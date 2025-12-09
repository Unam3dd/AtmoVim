-- Configuration pour taplo (TOML Language Server)

return {
	cmd = { "taplo", "lsp", "stdio" },
	filetypes = { "toml" },
	root_markers = { "*.toml", ".git" },
	settings = {
		evenBetterToml = {
			schema = {
				enabled = true,
				associations = {
					[".*Cargo\\.toml"] = "taplo://Cargo.toml",
				},
			},
		},
	},
}
