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

	-- Transparent
	use 'xiyaowong/nvim-transparent'
	
	-- Mason
	use { 
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
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

    use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }
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

  use { 
      'nvimdev/dashboard-nvim',
      event = 'VimEnter',
      config = function ()
          require('dashboard').setup {
              config = {
                  shortcut = {
                      {
                          icon = ' ',
                          icon_hl = '@variable',
                          desc = 'Search Files',
                          group = 'Label',
                          action = 'Telescope find_files',
                          key = 'f',
                      },
                      {
                          icon = ' 󰚰 ',
                          icon_hl = '@variable',
                          desc = 'Update Packages',
                          group = 'Label',
                          action = 'AtmoVimUpdate',
                          key = 'u',
                      },
                      {
                          icon = '󰩈',
                          icon_hl = '@variable',
                          desc = 'Exit AtmoVim',
                          group = 'Label',
                          action = ':qa!',
                          key = 'q'
                      }
                  }
              }
          }
      end,
      require = {'nvim-tree/nvim-web-devicons'}
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
