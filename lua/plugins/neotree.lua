return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
	keys = {
		--{"<leader>ee", ":Neotree toggle<CR>", desc = "Toggle Neotree", silent = true, noremap = true },
    	{"<C-n>", ":Neotree reveal<CR>", desc = "Reveal Neotree", silent = true, noremap = true },
	},
	config = function()
        require("neo-tree").setup({
          popup_border_style = "rounded",
          enable_diagnostics = true,
          filesystem = {
            filtered_items = {
              hide_dotfiles = false,
              hide_gitignored = false,
            },
            window = {
              mappings = {
                ["<TAB>"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
              },
            },
          },
        })
      end,
  }
}
