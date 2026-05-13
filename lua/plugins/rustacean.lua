return {
	"mrcjkb/rustaceanvim",
	version = "^6",
	ft = { "rust" },
	init = function()
		vim.g.rustaceanvim = {
			server = {
				default_settings = {
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
						},
						checkOnSave = true,
					},
				},
			},
		}

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local bufnr = args.buf
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				if not client then
					return
				end

				-- Stop legacy built-in client if it gets started.
				if client.name == "rust_analyzer" then
					client.stop()
					return
				end

				if client.name ~= "rust-analyzer" then
					return
				end

				if vim.bo[bufnr].filetype ~= "rust" then
					return
				end

				if vim.lsp.inlay_hint and type(vim.lsp.inlay_hint.enable) == "function" then
					local ok = pcall(vim.lsp.inlay_hint.enable, true, { bufnr = bufnr })
					if not ok then
						pcall(vim.lsp.inlay_hint.enable, bufnr, true)
					end
				elseif type(vim.lsp.inlay_hint) == "function" then
					pcall(vim.lsp.inlay_hint, bufnr, true)
				end
			end,
		})
	end,
}
