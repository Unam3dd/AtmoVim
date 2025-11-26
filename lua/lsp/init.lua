-- Configuration LSP moderne (Neovim 0.11+)
-- Architecture modulaire et évolutive

local lsp_config = require("lsp.config")
local lsp_servers = require("lsp.servers")

local M = {}

-- Configure un serveur LSP
local function setup_server(server_name, server_config)
  -- Merge avec la config globale
  local config = vim.tbl_deep_extend("force", {
    capabilities = lsp_config.capabilities,
    on_attach = lsp_config.on_attach,
    handlers = lsp_config.handlers,
  }, server_config or {})

  return config
end

-- Initialise tous les serveurs via mason-lspconfig
M.setup = function()
  local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")

  if not mason_lspconfig_ok then
    vim.notify("mason-lspconfig non trouvé, configuration LSP ignorée", vim.log.levels.WARN)
    return
  end

  -- Configuration de mason-lspconfig
  mason_lspconfig.setup({
    ensure_installed = vim.tbl_keys(lsp_servers.servers),
    automatic_installation = true,
  })

  -- Handler par défaut pour tous les serveurs
  mason_lspconfig.setup_handlers({
    -- Handler par défaut
    function(server_name)
      local server_config = lsp_servers.servers[server_name] or {}
      local config = setup_server(server_name, server_config)

      -- Utilise lspconfig pour le moment (transition progressive possible)
      local lspconfig_ok, lspconfig = pcall(require, "lspconfig")
      if lspconfig_ok then
        lspconfig[server_name].setup(config)
      end
    end,

    -- Handlers spécifiques (optionnel)
    -- Exemple pour surcharger la config d'un serveur spécifique :
    -- ["rust_analyzer"] = function()
    --   require("rust-tools").setup({})
    -- end,
  })
end

-- Setup automatique avec délai
vim.defer_fn(function()
  M.setup()
end, 1000)

return M
