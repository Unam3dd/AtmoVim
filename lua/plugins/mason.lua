local servers = {
	"lua_ls",
	"clangd",
	"asm_lsp",
	"bashls",
	"cssls",
	"dockerls",
	"html",
	"jsonls",
	"marksman",
	"pyright",
	"rust_analyzer",
	"sqlls",
	"ts_ls",
	"biome",
	"yamlls",
}

return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {
			ui = { check_outdated_packages_on_open = false, border = "rounded", width = 0.8, height = 0.8 },
			automatic_installation = true,
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "hrsh7th/cmp-nvim-lsp" },
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			ensure_installed = servers,
			automatic_installation = true,
		},
		config = function(_, opts)
			require("mason-lspconfig").setup(opts)

			-- Optimiser updatetime pour CursorHold (par défaut 4000ms est trop lent)
			vim.opt.updatetime = 300

			-- Obtenir les capabilities depuis cmp_nvim_lsp
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- Désactiver les snippets LSP pour éviter le mode sélection
			capabilities.textDocument.completion.completionItem.snippetSupport = false

			-- Configuration des diagnostics
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
				float = { border = "rounded", source = "always" },
			})

			-- Définir les symboles de diagnostics
			for _, sign in ipairs({ "Error", "Warn", "Hint", "Info" }) do
				vim.fn.sign_define("DiagnosticSign" .. sign, {
					texthl = "DiagnosticSign" .. sign,
					text = sign:sub(1, 1),
					numhl = "",
				})
			end

			-- Mappings LSP
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local bufnr = args.buf
					local bufopts = { noremap = true, silent = true, buffer = bufnr }
					local maps = {
						{ "n", "gd",         vim.lsp.buf.definition },
						{ "n", "gr",         vim.lsp.buf.references },
						{ "n", "gi",         vim.lsp.buf.implementation },
						{ "n", "gt",         vim.lsp.buf.type_definition },
						{ "n", "lK",         vim.lsp.buf.hover },
						{ "n", "<leader>rn", vim.lsp.buf.rename },
						{ "n", "<leader>ca", vim.lsp.buf.code_action },
						{ "n", "<leader>f",  vim.lsp.buf.format },
						{ "n", "<C-k>",      vim.lsp.buf.signature_help },
					}
					for _, map in ipairs(maps) do
						vim.keymap.set(map[1], map[2], map[3], bufopts)
					end
				end,
			})

			-- Diagnostics au survol (optimisé)
			vim.api.nvim_create_autocmd({ "CursorHold" }, {
				callback = function()
					-- Ne rien faire si on est déjà dans un float
					for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
						if vim.api.nvim_win_get_config(winid).zindex then
							return
						end
					end

					local diagnostics = vim.diagnostic.get(0, { lnum = vim.api.nvim_win_get_cursor(0)[1] - 1 })
					if #diagnostics > 0 then
						vim.diagnostic.open_float(nil, {
							focusable = false,
							close_events = { "CursorMoved", "InsertEnter", "BufLeave" },
							border = "rounded",
							source = "if_many",
							prefix = " ",
							scope = "cursor",
						})
					end
				end,
			})

			-- Configurer les capabilities globalement pour tous les serveurs
			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			-- Activer les serveurs LSP (Neovim découvre automatiquement les configs dans lsp/)
			for _, server_name in ipairs(servers) do
				vim.lsp.enable(server_name)
			end
		end,
	},
}
