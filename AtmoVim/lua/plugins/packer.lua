local HOME = os.getenv('HOME')

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

	-- Packer

	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use 'gruvbox-community/gruvbox'
	use 'olivercederborg/poimandres.nvim'
	use 'JoosepAlviste/palenightfall.nvim'
	use { 'Everblush/everblush.nvim', as = 'everblush' }
    use 'catppuccin/nvim'
    use 'folke/tokyonight.nvim'

	-- Transparent
	use 'xiyaowong/nvim-transparent'
	
	-- Mason
	use { 
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
        config = function ()
            require "custom.lspconfig"
        end,
	}

	-- Coc

	use {'neoclide/coc.nvim', branch = 'release'}

	-- Treesiter
	
	use { 'nvim-treesitter/nvim-treesitter',
        	run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}


    use { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

    use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true, event = "VimEnter"}
  }

  use {"akinsho/toggleterm.nvim", tag = '*'}

  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
      {
        's1n7ax/nvim-window-picker',
        version = '2.*',
        config = function ()
            require 'window-picker'.setup({
                filter_rules = {
                    include_current_win = false,
                    autoselect_one = true,
                    bo = {
                        filetype = { 'neo-tree', 'neo-tree-popup', 'notify'},
                        buftype = { 'terminal', 'quickfix' }
                    }
                }
            })
        end,
      },
    }
  }

  use { 'honza/vim-snippets' }

  use { 
      'xero/miasma.nvim',
      lazy = false
  }

  use { 'Unam3dd/alpha-nvim',
  config = function ()
      require('alpha').setup(require'alpha.themes.atmovim'.config)
    end,
    event = "VimEnter"
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
