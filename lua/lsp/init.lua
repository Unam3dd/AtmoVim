local servers = {
  "lua_ls", "clangd", "asm_lsp", "bashls", "cssls", "dockerls",
  "gopls", "html", "jsonls", "marksman", "pyright", "rust_analyzer",
  "sqlls", "ts_ls", "yamlls",
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
    opts = { ensure_installed = servers, automatic_installation = true },
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

      -- Configuration des serveurs
      for _, server_name in ipairs(servers) do
        local server_config = {}
        pcall(function()
          server_config = require("lsp.servers." .. server_name)
        end)
        -- Fusionner les capabilities de cmp_nvim_lsp avec celles du serveur
        server_config.capabilities = vim.tbl_deep_extend(
          "force",
          capabilities,
          server_config.capabilities or {}
        )
        vim.lsp.config(server_name, server_config)
        vim.lsp.enable(server_name)
      end
    end,
  },
}

