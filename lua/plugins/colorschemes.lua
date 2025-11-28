return {
  -- ========================================
  -- FAMILLE TOKYONIGHT
  -- ========================================
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE CATPPUCCIN
  -- ========================================
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE GRUVBOX
  -- ========================================
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "luisiacc/gruvbox-baby",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_baby_highlights = {
        NormalFloat = { bg = "#282828", fg = "#ebdbb2" },
        FloatBorder = { bg = "#282828", fg = "#928374" },
      }
    end,
  },

  -- ========================================
  -- FAMILLE ROSE PINE
  -- ========================================
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE KANAGAWA
  -- ========================================
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE EDGE
  -- ========================================
  {
    "sainnhe/edge",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE SONOKAI
  -- ========================================
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE EVERFOREST
  -- ========================================
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE NIGHTFOX
  -- ========================================
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE ONEDARK
  -- ========================================
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE MATERIAL
  -- ========================================
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- FAMILLE GITHUB
  -- ========================================
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
  },

  -- ========================================
  -- AUTRES THÈMES POPULAIRES
  -- ========================================
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "tomasiser/vim-code-dark",
    lazy = false,
    priority = 1000,
  },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
  },
  {
    "NLKNguyen/papercolor-theme",
    lazy = false,
    priority = 1000,
  },
  {
    "lifepillar/vim-solarized8",
    lazy = false,
    priority = 1000,
  },
  {
    "RRethy/nvim-base16",
    lazy = false,
    priority = 1000,
  },
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "Everblush/nvim",
    name = "everblush",
    lazy = false,
    priority = 1000,
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
  },
}
