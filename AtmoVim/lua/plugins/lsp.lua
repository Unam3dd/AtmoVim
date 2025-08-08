-- Configuration LSP moderne
local lspconfig = require("lspconfig")

-- Capacités LSP de base sans inlay hints
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- Configuration globale pour tous les LSP
local on_attach = function(client, bufnr)
  -- Mappings LSP
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  
  -- Navigation
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  
  -- Actions
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, bufopts)
  
  -- Diagnostics
  vim.keymap.set("n", "<leader>d", "<cmd>TroubleToggle workspace_diagnostics<CR>", bufopts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, bufopts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, bufopts)
  
  -- Signature help
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
  
  -- Buffer local options
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Désactiver le formatage automatique pour C/C++
  local filetype = vim.bo[bufnr].filetype
  if filetype == "c" or filetype == "cpp" then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
    -- Désactiver aussi les autres capacités de formatage
    if client.server_capabilities.documentFormattingProvider then
      client.server_capabilities.documentFormattingProvider = false
    end
    if client.server_capabilities.documentRangeFormattingProvider then
      client.server_capabilities.documentRangeFormattingProvider = false
    end
    -- Désactiver le formatage au niveau du buffer
    vim.b[bufnr].format_on_save = false
    vim.b[bufnr].autoformat = false
    
    -- Pas d'inlay hints pour C/C++
  end
end

-- Configuration des diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Pas d'inlay hints globalement

-- Configuration des signes de diagnostic
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Configuration des LSP spécifiques
local servers = {
  -- Lua
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = { enable = false },
      },
    },
  },
  
  -- C/C++
  clangd = {
    cmd = {
      "clangd",
      "--background-index",
      "--clang-tidy",
      "--header-insertion=iwyu",
      "--completion-style=detailed",
      "--fallback-style=google",
      "--suggest-missing-includes",
      "--completion-parse=always",
      "--inlay-hints",
    },
    -- Désactiver complètement le formatage automatique
    capabilities = {
      documentFormattingProvider = false,
      documentRangeFormattingProvider = false,
    },
    settings = {
      clangd = {
        arguments = {
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--fallback-style=google",
          "--suggest-missing-includes",
          "--completion-parse=always",
          "--inlay-hints",
        },
      },
    },
  },
  
  -- Python
  pyright = {
    settings = {
      python = {
        analysis = {
          typeCheckingMode = "basic",
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
        },
      },
    },
  },
  
  -- JavaScript/TypeScript
  tsserver = {
    settings = {
      typescript = {
        -- Configuration de base sans inlay hints
      },
    },
  },
  
  -- Go
  gopls = {
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
          shadow = true,
        },
        staticcheck = true,
        gofumpt = true,
      },
    },
  },
  
  -- Rust
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
  
  -- PHP
  intelephense = {
    settings = {
      intelephense = {
        environment = {
          phpVersion = "8.1",
        },
      },
    },
  },
  
  -- HTML/CSS
  html = {},
  cssls = {},
  emmet_ls = {},
  
  -- JSON
  jsonls = {
    settings = {
      json = {
        schemas = function()
          local schemastore_ok, schemastore = pcall(require, "schemastore")
          if schemastore_ok then
            return schemastore.json.schemas()
          else
            return {}
          end
        end,
        validate = { enable = true },
      },
    },
  },
  
  -- YAML
  yamlls = {
    settings = {
      yaml = {
        schemas = {
          ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
          ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose*.yml",
        },
      },
    },
  },
  
  -- Markdown
  marksman = {},
  
  -- Shell
  bashls = {},
  
  -- Docker
  dockerls = {},
  
  -- SQL
  sqlls = {},
}

-- Configuration automatique des LSP via mason-lspconfig
vim.defer_fn(function()
  local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
  if mason_lspconfig_ok then
    mason_lspconfig.setup({
      ensure_installed = vim.tbl_keys(servers),
      automatic_installation = true,
    })

    mason_lspconfig.setup_handlers({
      function(server_name)
        local server_config = servers[server_name] or {}
        server_config.capabilities = capabilities
        server_config.on_attach = on_attach
        
        lspconfig[server_name].setup(server_config)
      end,
    })
  else
    print("mason-lspconfig not found, LSP configuration skipped")
  end
end, 1000) -- Délai de 1 seconde pour s'assurer que tous les plugins sont chargés 
