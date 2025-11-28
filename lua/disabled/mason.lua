-- Désactiver complètement les vérifications de santé de Mason
vim.g.mason_health_check_on_startup = false
vim.g.mason_ui_check_outdated_packages_on_open = false
vim.g.mason_automatic_installation_health_check = false

require("mason").setup({
	-- Désactiver complètement les notifications de santé
	ui = {
		check_outdated_packages_on_open = false,
		border = "rounded",
		-- Supprimer les messages au démarrage
		width = 0.8,
		height = 0.8,
	},
	-- Désactiver les vérifications automatiques
	automatic_installation = true,
	automatic_installation_health_check = false,
	-- Désactiver les vérifications de santé
	health_check_on_startup = false,
})

require("mason-lspconfig").setup({
	ensure_installed = { "clangd" },
	automatic_installation = true,
	-- Désactiver les vérifications de santé
	automatic_installation_health_check = false,
})

