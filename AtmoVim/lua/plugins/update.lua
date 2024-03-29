
vim.api.nvim_create_user_command('AtmoVimInstall', function ()
    vim.print('Installing Coc Dependencies...')
	vim.cmd([[CocInstall coc-clangd]])
	vim.cmd([[CocInstall coc-docker]])
	vim.cmd([[CocInstall coc-json]])
	vim.cmd([[CocInstall coc-pairs]])
	vim.cmd([[CocInstall coc-discord-rpc]])
	vim.cmd([[CocInstall coc-snippets]])
	vim.cmd([[CocInstall coc-tsserver]])
    vim.cmd([[CocInstall coc-lua]])
    vim.cmd([[CocInstall coc-python]])
    vim.print('Installing Treesitter packages...')
    vim.cmd([[TSInstall c]])
	vim.cmd([[TSInstall cpp]])
	vim.cmd([[TSInstall python]])
	vim.cmd([[TSInstall bash]])
	vim.cmd([[TSInstall json]])
	vim.cmd([[TSInstall javascript]])
	vim.cmd([[TSInstall rust]])
	vim.cmd([[TSInstall go]])
    vim.cmd([[TSInstall lua]])
end, {desc = 'Installing Dependencies'})

vim.api.nvim_create_user_command('AtmoVimUpdate', function ()
    vim.print('Updating Dependencies...')
    vim.cmd([[PackerUpdate]])
    vim.cmd([[CocUpdateSync]])
    vim.cmd([[TSUpdateSync]])
end, { desc = 'Update Dependencies'})
