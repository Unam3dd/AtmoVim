require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "clangd" },
	automatic_installation = true,
})

