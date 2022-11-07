return require('packer').startup(function() 
	
	-- Packer for plugins
	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use 'gruvbox-community/gruvbox'
	use 'olivercederborg/poimandres.nvim'

	use 'glepnir/dashboard-nvim'

	-- nvim-cmp
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

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

 	use {
        	'nvim-treesitter/nvim-treesitter',
        	run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    	},

	-- LuaSnip
	use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})

  }

end)
