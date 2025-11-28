return {
	'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
    	{ '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
		{ '<leader>fr', '<cmd>Telescope oldfiles<cr>', desc = 'Recent Files' },
	}
}
