-- Configuration simplifiée pour nvim-treesitter
local treesitter_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if treesitter_ok then
  treesitter.setup({
  -- Langages essentiels seulement (pas de CLI requis)
  ensure_installed = {
    "c", "cpp", "python", "json", "javascript", "typescript",
    "lua", "vim", "html", "css", "yaml", "toml", "markdown",
    "go", "php", "java", "xml", "dockerfile", "gitignore"
  },
  
  -- Installation automatique désactivée pour éviter les problèmes
  auto_install = false,
  
  -- Synchronisation désactivée
  sync_install = false,
  
  -- Highlighting
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  
  -- Indentation
  indent = {
    enable = true,
  },
  
      -- Folding
    fold = {
      enable = true,
    },
  })
else
  print("nvim-treesitter not found, treesitter configuration skipped")
end 