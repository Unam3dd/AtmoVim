return {
	"karb94/neoscroll.nvim",
	opts = {},
	config = function(_, opts)
		local neoscroll = require("neoscroll")

		neoscroll.setup({}) -- config par défaut [web:5][web:23]

		local function near_bottom(threshold)
			local win_height = vim.api.nvim_win_get_height(0)
			local row = vim.api.nvim_win_get_cursor(0)[1]
			local topline = vim.fn.line("w0")
			local rel_row = row - topline + 1
			return (win_height - rel_row) <= threshold
		end

		local function near_top(threshold)
			local row = vim.api.nvim_win_get_cursor(0)[1]
			local topline = vim.fn.line("w0")
			local rel_row = row - topline + 1
			return rel_row <= threshold
		end

		-- } : smooth quand on est à 10 lignes du bas
		vim.keymap.set("n", "}", function()
			if near_bottom(15) then
				neoscroll.scroll(10, { move_cursor = true, duration = 100 })
			else
				vim.cmd("normal! }")
			end
		end, { silent = true })

		-- { : smooth quand on est à 10 lignes du haut
		vim.keymap.set("n", "{", function()
			if near_top(15) then
				neoscroll.scroll(-10, { move_cursor = true, duration = 100 })
			else
				vim.cmd("normal! {")
			end
		end, { silent = true })
	end
}
