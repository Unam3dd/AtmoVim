-- Configuration pour conform.nvim (formatage automatique)
require("conform").setup({
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
    -- C/C++ : formatage manuel uniquement (pas automatique)
    c = { "clang_format" },
    cpp = { "clang_format" },
    go = { "gofmt", "goimports" },
    rust = { "rustfmt" },
    php = { "php_cs_fixer" },
    java = { "google_java_format" },
    kotlin = { "ktlint" },
    swift = { "swiftformat" },
    dart = { "dart_format" },
    sh = { "shfmt" },
    sql = { "sqlformat" },
    xml = { "xmllint" },
  },
  format_on_save = false,  -- Désactiver complètement le formatage à la sauvegarde
  notify_on_error = false,
})

-- Désactiver complètement le formatage automatique pour C/C++
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt_local.formatoptions:remove("a")  -- Désactiver formatage automatique
    vim.opt_local.formatoptions:remove("t")  -- Désactiver wrap automatique
    vim.opt_local.formatoptions:remove("c")  -- Désactiver commentaires automatiques
    vim.opt_local.formatoptions:remove("o")  -- Désactiver commentaires automatiques
    vim.opt_local.formatoptions:remove("r")  -- Désactiver commentaires automatiques
    vim.opt_local.formatoptions:remove("q")  -- Désactiver formatage automatique
    vim.opt_local.formatoptions:remove("l")  -- Désactiver formatage automatique
    vim.opt_local.formatoptions:remove("2")  -- Désactiver formatage automatique
    vim.opt_local.formatoptions:remove("v")  -- Désactiver formatage automatique
    vim.opt_local.formatoptions:remove("b")  -- Désactiver formatage automatique
    
    -- Désactiver complètement le formatage LSP
    vim.b.format_on_save = false
    vim.b.autoformat = false
  end,
})

-- Désactiver aussi au niveau global pour C/C++
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
  callback = function()
    vim.b.format_on_save = false
    vim.b.autoformat = false
  end,
}) 