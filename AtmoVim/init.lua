-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Add current directory to runtime path
vim.opt.rtp:prepend(vim.fn.getcwd())



-- Load plugins with lazy.nvim
require("lazy").setup({
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
  -- LSP ET COMPLÉTION MODERNE
  -- ============================================================================
  {
    "williamboman/mason.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("plugins.mason")
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("plugins.cmp")
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  -- ============================================================================
  -- SYNTAXE ET PARSING
  -- ============================================================================
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
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
  -- Plugin d'affichage d'images (optionnel)
  {
    "3rd/image.nvim",
    opts = {
      rocks = {
        hererocks = false,  -- Désactiver hererocks pour éviter les problèmes
      },
    },
  },

  -- ============================================================================
  -- DASHBOARD MODERNE
  -- ============================================================================
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
      require("plugins.alpha")
    end,
  },

  -- ============================================================================
  -- GESTION DES RACCOURCIS
  -- ============================================================================
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins.which-key")
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    config = function()
      require("plugins.conform")
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins.trouble")
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("plugins.gitsigns")
    end,
  },

  -- ============================================================================
  -- FORMATAGE ET DIAGNOSTICS
  -- ============================================================================
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    config = function()
      require("plugins.conform")
    end,
  },
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("plugins.comment")
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins.trouble")
    end,
  },

  -- ============================================================================
  -- GIT INTÉGRATION
  -- ============================================================================
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("plugins.gitsigns")
    end,
  },

  -- ============================================================================
  -- UTILITAIRES
  -- ============================================================================
  {
    "nvim-lua/plenary.nvim",
    lazy = false,
  },
  {
    "b0o/SchemaStore.nvim",
    lazy = false,
  },
  -- Sessions supprimées
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
}, {
  change_detection = {
    notify = false,
  },
  -- Désactiver les notifications de santé
  checker = {
    enabled = false,
  },
  -- Désactiver les vérifications de santé automatiques
  performance = {
    rtp = {
      reset = false,
    },
  },
  -- Supprimer les messages au démarrage
  ui = {
    border = "rounded",
    -- Désactiver les messages de démarrage
    check_outdated_packages_on_open = false,
  },
})

-- Options (inclut la définition du leader key)
require ('core.options')

-- Keymaps (which-key sera chargé automatiquement par Lazy)
require('core.keymaps')

-- Load existing plugin configurations
require('plugins.themes')
require('plugins.mason')
require('plugins.clangd')
require('plugins.telescope')
require('plugins.bufferline')
require('plugins.lualine')
require('plugins.toggleterm')
require('plugins.neotree')
require('plugins.update')



-- Load LSP configuration after all plugins are installed
vim.api.nvim_create_autocmd("User", {
  pattern = "LazyDone",
  callback = function()
    require('plugins.lsp')
  end,
})

-- Supprimer tous les messages au démarrage (sans lancer checkhealth)
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Attendre un peu que tous les plugins soient chargés
    vim.defer_fn(function()
      -- Supprimer seulement les messages, ne pas lancer checkhealth
      vim.cmd("silent! messages clear")
    end, 1000)
  end,
  once = true,
})
