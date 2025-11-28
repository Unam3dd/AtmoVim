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
		{"<leader>e", ":Neotree toggle<CR>", desc = "Toggle Neotree", silent = true, noremap = true },
	},
	config = function()
        require("neo-tree").setup({
          filesystem = {
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
