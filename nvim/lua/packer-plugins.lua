return require('packer').startup(function() 
	
	-- Packer for plugins
	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use 'gruvbox-community/gruvbox'
	use 'olivercederborg/poimandres.nvim'

	use 'glepnir/dashboard-nvim'

	-- Mason
	use { 
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	
	-- Neotree
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

	use {
  		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v2.x",
    		requires = { 
      			"nvim-lua/plenary.nvim",
      			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      			"MunifTanjim/nui.nvim",
    	},
  }

end)
