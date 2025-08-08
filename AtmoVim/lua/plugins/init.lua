return {
  -- ============================================================================
  -- GESTIONNAIRE DE PLUGINS
  -- ============================================================================
  {
    "folke/lazy.nvim",
    version = "*",
  },

  -- ============================================================================
  -- THÈMES ET COULEURS
  -- ============================================================================
  {
    "gruvbox-community/gruvbox",
    lazy = false,
    priority = 1000,
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "JoosepAlviste/palenightfall.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "Everblush/everblush.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "xiyaowong/nvim-transparent",
    lazy = false,
  },

  -- ============================================================================
  -- LSP ET COMPLÉTION
  -- ============================================================================
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("plugins.mason")
    end,
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
    lazy = false,
  },
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
  },

  -- ============================================================================
  -- SYNTAXE ET PARSING
  -- ============================================================================
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("plugins.treesitter")
    end,
  },

  -- ============================================================================
  -- RECHERCHE ET NAVIGATION
  -- ============================================================================
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("plugins.telescope")
    end,
  },

  -- ============================================================================
  -- INTERFACE UTILISATEUR
  -- ============================================================================
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("plugins.bufferline")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("plugins.lualine")
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
  },

  -- ============================================================================
  -- TERMINAL
  -- ============================================================================
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("plugins.toggleterm")
    end,
  },

  -- ============================================================================
  -- EXPLORATEUR DE FICHIERS
  -- ============================================================================
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
      {
        "s1n7ax/nvim-window-picker",
        version = "2.*",
        config = function()
          require("window-picker").setup({
            filter_rules = {
              include_current_win = false,
              autoselect_one = true,
              bo = {
                filetype = { "neo-tree", "neo-tree-popup", "notify" },
                buftype = { "terminal", "quickfix" },
              },
            },
          })
        end,
      },
    },
    config = function()
      require("plugins.neotree")
    end,
  },

  -- ============================================================================
  -- SNIPPETS
  -- ============================================================================
  {
    "honza/vim-snippets",
    lazy = false,
  },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("plugins.luasnip")
    end,
  },

  -- ============================================================================
  -- DASHBOARD
  -- ============================================================================
  {
    "Unam3dd/alpha-nvim",
    config = function()
      require("alpha").setup(require("alpha.themes.atmovim").config)
    end,
    event = "VimEnter",
  },

  -- ============================================================================
  -- UTILITAIRES
  -- ============================================================================
  {
    "nvim-lua/plenary.nvim",
    lazy = false,
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = false,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = false,
  },
  {
    "xero/miasma.nvim",
    lazy = false,
  },


  -- ============================================================================
  -- IMAGES ET MÉDIA
  -- ============================================================================
  {
    "HakonHarnes/img-clip.nvim",
    lazy = false,
  },



  -- ============================================================================
  -- IA ET ASSISTANCE
  -- ============================================================================
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
  },
  {
    "yetone/avante.nvim",
    branch = "main",
    build = "make",
    config = function()
      require("avante").setup({
        provider = "ollama",
        providers = {
          ollama = {
            endpoint = "http://localhost:11434",
            model = "deepseek-coder",
          },
        },
      })
    end,
  },

  -- ============================================================================
  -- INTERFACE UTILISATEUR AVANCÉE
  -- ============================================================================
  {
    "stevearc/dressing.nvim",
    lazy = false,
  },
  {
    "folke/snacks.nvim",
    lazy = false,
  },

  -- ============================================================================
  -- HEADERS ET TEMPLATES
  -- ============================================================================
  {
    "42paris/42header",
    lazy = false,
  },


} 