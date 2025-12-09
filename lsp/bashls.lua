-- Configuration pour bashls (Bash Language Server)

return {
	cmd = { "bash-language-server", "start" },
	filetypes = { "sh", "bash" },
	root_markers = { ".git" },
}
