return {
	"s1n7ax/nvim-comment-frame",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("nvim-comment-frame").setup({
			disable_default_keymap = false,
			keymap = "<leader>cc",
			multiline_keymap = "<leader>cm",

			-- Configuration personnalisée par langage
			languages = {
				lua = {
					start_str = "--",
					end_str = "--",
					fill_char = "=",
					frame_width = 70,
					line_wrap_len = 50,
					auto_indent = true,
					add_comment_above = true,
				},
				javascript = {
					start_str = "//",
					end_str = "//",
					fill_char = "=",
					frame_width = 70,
					line_wrap_len = 50,
					auto_indent = true,
					add_comment_above = true,
				},
				typescript = {
					start_str = "/*",
					end_str = "*/",
					fill_char = "=",
					frame_width = 100,
					line_wrap_len = 50,
					auto_indent = true,
					add_comment_above = true,
				},
				python = {
					start_str = "#",
					end_str = "#",
					fill_char = "=",
					frame_width = 70,
					line_wrap_len = 50,
					auto_indent = true,
					add_comment_above = true,
				},
				c = {
					start_str = "//",
					end_str = "//",
					fill_char = "=",
					frame_width = 70,
					line_wrap_len = 50,
					auto_indent = true,
					add_comment_above = true,
				},
				cpp = {
					start_str = "//",
					end_str = "//",
					fill_char = "=",
					frame_width = 70,
					line_wrap_len = 50,
					auto_indent = true,
					add_comment_above = true,
				},
				rust = {
					start_str = "//",
					end_str = "//",
					fill_char = "=",
					frame_width = 70,
					line_wrap_len = 50,
					auto_indent = true,
					add_comment_above = true,
				},
				go = {
					start_str = "//",
					end_str = "//",
					fill_char = "=",
					frame_width = 70,
					line_wrap_len = 50,
					auto_indent = true,
					add_comment_above = true,
				},
			},
		})
	end,
	keys = {
		{
			"<leader>cc",
			mode = { "n", "v" },
			desc = "Créer un commentaire encadré (single line)",
		},
		{
			"<leader>cm",
			mode = { "n", "v" },
			desc = "Créer un commentaire encadré (multi line)",
		},
	},
}
