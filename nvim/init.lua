local home = os.getenv('HOME')
-- Map Leader

vim.g.mapleader = " "

-- KeyMap
-- Insert Mode keymap

vim.api.nvim_set_keymap('i', '<C-q>', '<ESC>:q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>:w!<CR>', {	noremap = true })

-- Normal Mode keymap
vim.api.nvim_set_keymap('', '<C-q>', ':q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('', '<C-s>', ':w!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Right>', '<C-w><Right>', {noremap = true})
vim.api.nvim_set_keymap('n', '<S-Left>', '<C-w><Left>', {noremap = true})
vim.api.nvim_set_keymap('n', '<S-Up>', '<C-w><Up>', {noremap = true})
vim.api.nvim_set_keymap('n', '<S-Down>', '<C-w><Down>', {noremap = true})


-- Options
vim.o.relativenumber = true

-- Packer
require('packer-plugins')

-- Mason LSP

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "clangd"},
	automatic_installation = true,
})

-- Load LSP

require("lspconfig").clangd.setup {}

-- Neotree configuration

require("neo-tree").setup({
	close_if_last_window = true,
	popup_border_style = "rounded",
	
	modified = {
            symbol = ">>>",
            highlight = "NeoTreeModified",
          },
	
	window = {
		position = "left",
		width = 40,
		mapping_options = {
			noremap  = true,
			nowait = true,
		},
		mappings = {
			["<space>"] = {
				"toggle_node",
				nowait = false,
			},
			["C"] = "close_node",
			["z"] = "close_all_nodes",
			["c"] = "copy",
			["p"] = "paste_from_clipboard",
			["m"] = "move",
			["<"] = "prev_source",
			[">"] = "next_source",
			["r"] = "rename",
			["R"] = "refresh",
			["q"] = "close_window",
			["d"] = "delete",
			["A"] = "add_directory",
			["t"] = "open_tabnew",
			["s"] = "open_split",
			["S"] = "open_vsplit",
			["<cr>"] = "open",
			["<esc>"] = "revert_preview",
			["w"] = "open_with_window_picker",
			["P"] = { "toggle_preview", config = { use_float = true } },
		},
		git_status = {
          		window = {
            			position = "float",
            		mappings = {
              			["A"]  = "git_add_all",
              			["gu"] = "git_unstage_file",
              			["ga"] = "git_add_file",
              			["gr"] = "git_revert_file",
              			["gc"] = "git_commit",
              			["gp"] = "git_push",
             			["gg"] = "git_commit_and_push",
            			}
        		}
        	}
	}
})

vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
vim.api.nvim_set_keymap('i', '<C-g>', '<esc>:Neotree<CR', {})
vim.api.nvim_set_keymap('', '<C-g>', '<esc>:Neotree<CR>', {})

-- Dashboard
local db = require('dashboard')

-- linux

db.preview_command = 'cat'

--
db.preview_file_path = home .. '/.config/nvim/db/banner.cat'
db.preview_file_height = 17
db.preview_file_width = 70
db.custom_center = {
	{icon = '  ',
      	desc = 'Recently latest session                  ',
      	shortcut = 'SPC s l',
      	action ='SessionLoad'},
      	{icon = '  ',
     	 desc = 'Recently opened files                   ',
     	 action =  'DashboardFindHistory',
      	shortcut = 'SPC f h'},
      	{icon = '  ',
      	desc = 'Find  File                              ',
     	 action = 'Telescope find_files find_command=rg,--hidden,--files',
      	shortcut = 'SPC f f'},
      	{icon = '  ',
      	desc ='File Browser                            ',
      	action =  'Telescope file_browser',
      	shortcut = 'SPC f b'},
      	{icon = '  ',
      	desc = 'Find  word                              ',
      	action = 'Telescope live_grep',
      	shortcut = 'SPC f w'},
      	{icon = '  ',
      	desc = 'Open Personal dotfiles                  ',
      	action = 'Telescope dotfiles path=' .. home ..'/.dotfiles',
      	shortcut = 'SPC f d'},
}

require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "c" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
