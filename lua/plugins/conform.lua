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
    		javascript = { "prettier" },
    		typescript = { "prettier" },
    		javascriptreact = { "prettier" },
    		typescriptreact = { "prettier" },
    		json = { "prettier" },
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
		--format_on_save = { timeout_ms = 500 },
		format_on_save = false,
		formatters = {
			shfmt = {
				append_args = { "-i", "2" },
			},
		},
	},

	init = function()
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
