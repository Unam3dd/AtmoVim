 return {
      {
          "williamboman/mason.nvim",
          opts = {},
      },
      {
          "williamboman/mason-lspconfig.nvim",
          dependencies = { "williamboman/mason.nvim" },
          opts = {
              ensure_installed = { "lua_ls" },
              automatic_installation = true,
          },
      },
      {
          "neovim/nvim-lspconfig",
          dependencies = { "williamboman/mason-lspconfig.nvim" },
          config = function()
              -- Auto-config des serveurs
              require("mason-lspconfig").setup_handlers({
                  function(server) require("lspconfig")[server].setup({}) end,
              })
          end,
      },
  }

