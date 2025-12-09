-- Configuration pour sqlls (SQL Language Server)

return {
	cmd = { "sql-language-server", "up", "--method", "stdio" },
	filetypes = { "sql", "mysql" },
	root_markers = { ".git" },
}
