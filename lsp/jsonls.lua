-- Configuration pour jsonls (JSON Language Server)

local schemastore_ok, schemastore = pcall(require, "schemastore")
local schemas = schemastore_ok and schemastore.json.schemas() or {}

return {
	cmd = { "vscode-json-language-server", "--stdio" },
	filetypes = { "json", "jsonc" },
	root_markers = { ".git" },
	settings = {
		json = {
			schemas = schemas,
			validate = { enable = true },
		},
	},
}
