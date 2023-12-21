vim.keymap.set('n', 'T', function ()
	vim.cmd([[TSInstall c]])
	vim.cmd([[TSInstall cpp]])
	vim.cmd([[TSInstall python]])
	vim.cmd([[TSInstall bash]])
	vim.cmd([[TSInstall json]])
	vim.cmd([[TSInstall javascript]])
	vim.cmd([[TSInstall rust]])
	vim.cmd([[TSInstall go]])
end, {desc = 'Install Treesiter parser'})

require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "cpp", "python", "json", "bash", "rust", "go", "javascript"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
}

