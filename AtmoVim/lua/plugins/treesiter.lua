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

