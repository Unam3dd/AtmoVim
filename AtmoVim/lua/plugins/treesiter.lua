require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "cpp", "python", "json", "bash", "rust", "go", "javascript"},
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
}

