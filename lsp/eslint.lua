return {
	cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/vscode-eslint-language-server"), "--stdio" },
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	root_markers = { "eslint.config.mjs", "eslint.config.js", "eslint.config.cjs", "package.json", ".git" },
	settings = {
		validate = "on",
		packageManager = "npm",
		useESLintClass = true,
		workingDirectory = { mode = "location" },
		format = false,

		nodePath = vim.NIL,                       -- IMPORTANT (sinon crash)
		experimental = { useFlatConfig = false }, -- IMPORTANT (sinon crash)
		problems = { shortenToSingleLine = false }, -- IMPORTANT (sinon crash)

		rulesCustomizations = {},                 -- doit être un tableau (vide OK)
		codeActionOnSave = vim.empty_dict(),      -- doit être un objet, pas un tableau
		onIgnoredFiles = "off",
		quiet = false,
		options = vim.empty_dict(),
	},
}
