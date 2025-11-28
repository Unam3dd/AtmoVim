return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { 
          "c", "lua", "vim", "vimdoc", "cpp", "json", 
          "javascript", "typescript", "python", "html",
          "css", "yaml", "toml", "markdown", "go", "xml",
          "dockerfile", "gitignore", "rust", "bash"
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        fold = {
          enable = true,
        },
      }
    end,
  }
}
