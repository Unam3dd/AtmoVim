return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup({
        ui = {
          check_outdated_packages_on_open = false,
          border = "rounded",
          width = 0.8,
          height = 0.8,
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { 
            "lua_ls", "clangd", "asm_lsp", 
            "bashls", "cssls", "dockerls", 
            "gopls", "html", "jsonls", 
            "marksman", "pyright", "rust_analyzer", 
            "sqlls", "ts_ls", "yamlls"
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- Liste des serveurs à configurer
      local servers = {
        "lua_ls",
        "clangd",
        "asm_lsp",
        "bashls",
        "cssls",
        "dockerls",
        "gopls",
        "html",
        "jsonls",
        "marksman",
        "pyright",
        "rust_analyzer",
        "sqlls",
        "ts_ls",
        "yamlls",
      }
      
      -- Configurer chaque serveur avec la nouvelle API vim.lsp.config
      for _, server_name in ipairs(servers) do
        -- Essayer de charger la configuration personnalisée du serveur
        local ok, server_config = pcall(require, "lsp.servers." .. server_name)
        
        if not ok then
          server_config = {}
        end
        
        -- Utiliser la nouvelle API vim.lsp.config (Neovim 0.11+)
        vim.lsp.config(server_name, server_config)
        vim.lsp.enable(server_name)
      end
    end,
  },
}

