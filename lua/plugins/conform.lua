return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>ft",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "biome" },
			typescript = { "biome" },
			javascriptreact = { "biome" },
			typescriptreact = { "biome" },
			json = { "biome" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			c = { "clang_format" },
			cpp = { "clang_format" },
			go = { "gofmt", "goimports" },
			rust = { "rustfmt" },
			kotlin = { "ktlint" },
			sh = { "shfmt" },
			sql = { "sqlformat" },
			xml = { "xmllint" },
		},
		notify_on_error = false,
		default_format_opts = {
			lsp_format = "fallback",
		},

		-- Set up format-on-save
		format_on_save = { timeout_ms = 3000 },
		formatters = {
			shfmt = {
				append_args = { "-i", "2" },
			},
			biome = {
				args = function(self, ctx)
					local args = {
					"check",
					"--write",
					"--stdin-file-path",
					"$FILENAME",
					"--format-with-errors=true",
				}
					if not self:cwd(ctx) then
						table.insert(args, "--indent-style")
						table.insert(args, vim.bo[ctx.buf].expandtab and "space" or "tab")
						table.insert(args, "--indent-width")
						table.insert(args, tostring(ctx.shiftwidth))
					end
					return args
				end,
			},
		},
	},

	init = function()
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
