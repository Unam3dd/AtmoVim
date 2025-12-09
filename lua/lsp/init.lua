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
		dependencies = { "williamboman/mason.nvim" },
		lazy = false,
		opts = {
			ensure_installed = servers,
			automatic_installation = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim", "hrsh7th/cmp-nvim-lsp" },
		event = { "BufReadPre", "BufNewFile" },
		config = function()
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
						{ "n", "gd", vim.lsp.buf.definition },
						{ "n", "gr", vim.lsp.buf.references },
						{ "n", "gi", vim.lsp.buf.implementation },
						{ "n", "gt", vim.lsp.buf.type_definition },
						{ "n", "lK", vim.lsp.buf.hover },
						{ "n", "<leader>rn", vim.lsp.buf.rename },
						{ "n", "<leader>ca", vim.lsp.buf.code_action },
						{ "n", "<leader>f", vim.lsp.buf.format },
						{ "n", "<C-k>", vim.lsp.buf.signature_help },
					}
					for _, map in ipairs(maps) do
						vim.keymap.set(map[1], map[2], map[3], bufopts)
					end
				end,
			})

			-- Diagnostics au survol
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				callback = function()
					local diagnostics = vim.diagnostic.get(0, { lnum = vim.api.nvim_win_get_cursor(0)[1] - 1 })
					if #diagnostics > 0 then
						vim.diagnostic.open_float(0, {
							focusable = false,
							close_events = { "BufLeave", "CursorMoved", "CursorMovedI", "InsertEnter", "FocusLost" },
							border = "rounded",
							source = "always",
							prefix = " ",
							scope = "cursor",
						})
					end
				end,
			})

			-- Table pour stocker les configurations des serveurs
			local server_configs = {}

			for _, server_name in ipairs(servers) do
				local server_config = { capabilities = capabilities }

				-- Charger la configuration spécifique du serveur si elle existe
				local ok, custom_config = pcall(require, "lsp.servers." .. server_name)
				if ok then
					server_config = vim.tbl_deep_extend("force", server_config, custom_config)
				end

				-- Configurer le serveur avec l'API native
				vim.lsp.config(server_name, server_config)
				server_configs[server_name] = server_config
			end

			-- Créer un mapping filetype -> serveur
			local filetype_to_server = {
				lua = "lua_ls",
				c = "clangd",
				cpp = "clangd",
				asm = "asm_lsp",
				sh = "bashls",
				bash = "bashls",
				css = "cssls",
				dockerfile = "dockerls",
				html = "html",
				json = "jsonls",
				markdown = "marksman",
				python = "pyright",
				rust = "rust_analyzer",
				sql = "sqlls",
				typescript = "ts_ls",
				typescriptreact = "ts_ls",
				javascript = "ts_ls",
				javascriptreact = "ts_ls",
				yaml = "yamlls",
				go = "gopls",
			}

			-- Activer automatiquement le LSP au chargement des fichiers
			vim.api.nvim_create_autocmd({ "FileType" }, {
				callback = function(args)
					local filetype = vim.bo[args.buf].filetype
					local server_name = filetype_to_server[filetype]

					if server_name and server_configs[server_name] then
						vim.lsp.enable(server_name, args.buf)
					end
				end,
			})
		end,
	},
}
