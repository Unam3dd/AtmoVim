return require('packer').startup(function() 
	
	-- Packer for plugins
	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use 'gruvbox-community/gruvbox'
	use 'olivercederborg/poimandres.nvim'
	use 'JoosepAlviste/palenightfall.nvim'
	use { 'Everblush/everblush.nvim', as = 'everblush' }

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
      			"MunifTanjim/nui.nvim"
		}
    	}

 	use { 'nvim-treesitter/nvim-treesitter',
        	run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	use 'honza/vim-snippets'

	use 'louisboilard/pyramid.nvim'

	use 'xiyaowong/nvim-transparent'

	use 'nvim-lua/plenary.nvim'

	use 'kyazdani42/nvim-web-devicons'

	use {'neoclide/coc.nvim', branch = 'release'}

	use {
  		'romgrk/barbar.nvim',
  		requires = {'kyazdani42/nvim-web-devicons'}
	}

	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
    'KadoBOT/nvim-spotify', 
    requires = 'nvim-telescope/telescope.nvim',
    config = function()
        local spotify = require'nvim-spotify'

        spotify.setup {
            -- default opts
            status = {
                update_interval = 10000, -- the interval (ms) to check for what's currently playing
                format = '%s %t by %a' -- spotify-tui --format argument
            }
        }
    end,
    run = 'make'
	}

	use {"akinsho/toggleterm.nvim", tag = '*'}

	use {"p00f/godbolt.nvim"}

	use { "rktjmp/lush.nvim"}

	use { "numToStr/Sakura.nvim" }

	use { 'mhartington/oceanic-next'}

end)
