return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs", -- Affiche uniquement les vrais tabs au lieu de tous les buffers
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
						separator = true,
					},
				},
			},
		})
	end,
	keys = {
		{ "<Tab>",      "<cmd>BufferLineCycleNext<cr>",   desc = "Next buffer" },
		{ "<S-Tab>",    "<cmd>BufferLineCyclePrev<cr>",   desc = "Previous buffer" },
		{ "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Close other buffers" },
	},
}
