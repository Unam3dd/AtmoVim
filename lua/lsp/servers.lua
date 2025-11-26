-- Index des configurations des serveurs LSP
-- Chaque serveur a son propre fichier dans lua/lsp/servers/

local M = {}

-- Import automatique des configurations depuis le dossier servers/
M.servers = {
  -- Languages principaux
  lua_ls = require("lsp.servers.lua_ls"),
  clangd = require("lsp.servers.clangd"),
  pyright = require("lsp.servers.pyright"),
  rust_analyzer = require("lsp.servers.rust_analyzer"),
  gopls = require("lsp.servers.gopls"),
  ts_ls = require("lsp.servers.ts_ls"),

  -- Web
  html = require("lsp.servers.html"),
  cssls = require("lsp.servers.cssls"),

  -- Data
  jsonls = require("lsp.servers.jsonls"),
  yamlls = require("lsp.servers.yamlls"),

  -- Documentation
  marksman = require("lsp.servers.marksman"),

  -- Shell & Tools
  bashls = require("lsp.servers.bashls"),
  dockerls = require("lsp.servers.dockerls"),
  sqlls = require("lsp.servers.sqlls"),

  -- Assembly
  asm_lsp = require("lsp.servers.asm_lsp"),
}

return M
