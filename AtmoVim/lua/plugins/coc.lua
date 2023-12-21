-- Coc Command

vim.keymap.set('n', 'I', function()
	print('Installing Coc Dependencies')
	vim.cmd([[CocInstall coc-clangd]])
	vim.cmd([[CocInstall coc-docker]])
	vim.cmd([[CocInstall coc-json]])
	vim.cmd([[CocInstall coc-pairs]])
	vim.cmd([[CocInstall coc-discord-rpc]])
	vim.cmd([[CocInstall coc-snippets]])
	vim.cmd([[CocInstall coc-tsserver]])
end, {desc = 'Say hello'})
