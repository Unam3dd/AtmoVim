return {
  "zaldih/themery.nvim",
  lazy = false,
  keys = {
		{"<leader>tc", ":Themery<CR>", desc = "Toggle Themery", silent = true, noremap = true }
  },
  config = function()
    require("themery").setup({
      themes = {
        -- ========================================
        -- THÈMES SOMBRES
        -- ========================================

        -- Gruvbox
        {
          name = "Gruvbox Dark",
          colorscheme = "gruvbox",
          before = [[
            vim.o.background = "dark"
          ]],
        },
        {
          name = "Gruvbox Baby",
          colorscheme = "gruvbox-baby",
        },

        -- Everblush
        {
          name = "Everblush",
          colorscheme = "everblush",
        },

        -- Catppuccin
        {
          name = "Catppuccin Mocha",
          colorscheme = "catppuccin-mocha",
        },
        {
          name = "Catppuccin Macchiato",
          colorscheme = "catppuccin-macchiato",
        },
        {
          name = "Catppuccin Frappe",
          colorscheme = "catppuccin-frappe",
        },

        -- Tokyonight
        {
          name = "Tokyonight Night",
          colorscheme = "tokyonight-night",
        },
        {
          name = "Tokyonight Storm",
          colorscheme = "tokyonight-storm",
        },
        {
          name = "Tokyonight Moon",
          colorscheme = "tokyonight-moon",
        },

        -- Rose Pine
        {
          name = "Rose Pine",
          colorscheme = "rose-pine",
        },
        {
          name = "Rose Pine Moon",
          colorscheme = "rose-pine-moon",
        },

        -- Kanagawa
        {
          name = "Kanagawa",
          colorscheme = "kanagawa",
        },
        {
          name = "Kanagawa Wave",
          colorscheme = "kanagawa-wave",
        },
        {
          name = "Kanagawa Dragon",
          colorscheme = "kanagawa-dragon",
        },

        -- Nightfox Family
        {
          name = "Nightfox",
          colorscheme = "nightfox",
        },
        {
          name = "Duskfox",
          colorscheme = "duskfox",
        },
        {
          name = "Nordfox",
          colorscheme = "nordfox",
        },
        {
          name = "Terafox",
          colorscheme = "terafox",
        },

        -- Material
        {
          name = "Material Darker",
          colorscheme = "material",
          before = [[
            vim.g.material_style = "darker"
          ]],
        },
        {
          name = "Material Deep Ocean",
          colorscheme = "material",
          before = [[
            vim.g.material_style = "deep ocean"
          ]],
        },
        {
          name = "Material Oceanic",
          colorscheme = "material",
          before = [[
            vim.g.material_style = "oceanic"
          ]],
        },
        {
          name = "Material Palenight",
          colorscheme = "material",
          before = [[
            vim.g.material_style = "palenight"
          ]],
        },

        -- GitHub
        {
          name = "GitHub Dark",
          colorscheme = "github_dark",
        },
        {
          name = "GitHub Dark Dimmed",
          colorscheme = "github_dark_dimmed",
        },

        -- Sonokai
        {
          name = "Sonokai",
          colorscheme = "sonokai",
          before = [[
            vim.g.sonokai_style = "default"
          ]],
        },
        {
          name = "Sonokai Shusia",
          colorscheme = "sonokai",
          before = [[
            vim.g.sonokai_style = "shusia"
          ]],
        },
        {
          name = "Sonokai Atlantis",
          colorscheme = "sonokai",
          before = [[
            vim.g.sonokai_style = "atlantis"
          ]],
        },
        {
          name = "Sonokai Andromeda",
          colorscheme = "sonokai",
          before = [[
            vim.g.sonokai_style = "andromeda"
          ]],
        },
        {
          name = "Sonokai Maia",
          colorscheme = "sonokai",
          before = [[
            vim.g.sonokai_style = "maia"
          ]],
        },

        -- Edge
        {
          name = "Edge Dark",
          colorscheme = "edge",
          before = [[
            vim.g.edge_style = "default"
            vim.o.background = "dark"
          ]],
        },

        -- Ayu
        {
          name = "Ayu Dark",
          colorscheme = "ayu-dark",
        },
        {
          name = "Ayu Mirage",
          colorscheme = "ayu-mirage",
        },

        -- OneDark
        {
          name = "OneDark",
          colorscheme = "onedark",
        },

        -- Dracula
        {
          name = "Dracula",
          colorscheme = "dracula",
        },

        -- Nightfly
        {
          name = "Nightfly",
          colorscheme = "nightfly",
        },

        -- Moonfly
        {
          name = "Moonfly",
          colorscheme = "moonfly",
        },

        -- VSCode
        {
          name = "VSCode Dark",
          colorscheme = "vscode",
        },

        -- Monokai Pro
        {
          name = "Monokai Pro",
          colorscheme = "monokai-pro",
        },
        {
          name = "Monokai Pro Classic",
          colorscheme = "monokai-pro-classic",
        },
        {
          name = "Monokai Pro Machine",
          colorscheme = "monokai-pro-machine",
        },
        {
          name = "Monokai Pro Octagon",
          colorscheme = "monokai-pro-octagon",
        },
        {
          name = "Monokai Pro Ristretto",
          colorscheme = "monokai-pro-ristretto",
        },
        {
          name = "Monokai Pro Spectrum",
          colorscheme = "monokai-pro-spectrum",
        },

        -- Miasma
        {
          name = "Miasma",
          colorscheme = "miasma",
        },

        -- Poimandres
        {
          name = "Poimandres",
          colorscheme = "poimandres",
        },

        -- Nord
        {
          name = "Nord",
          colorscheme = "nord",
        },

        -- Everforest Dark
        {
          name = "Everforest Dark Soft",
          colorscheme = "everforest",
          before = [[
            vim.g.everforest_background = "soft"
            vim.o.background = "dark"
          ]],
        },
        {
          name = "Everforest Dark Medium",
          colorscheme = "everforest",
          before = [[
            vim.g.everforest_background = "medium"
            vim.o.background = "dark"
          ]],
        },
        {
          name = "Everforest Dark Hard",
          colorscheme = "everforest",
          before = [[
            vim.g.everforest_background = "hard"
            vim.o.background = "dark"
          ]],
        },

        -- Code Dark
        {
          name = "Code Dark",
          colorscheme = "codedark",
        },

        -- Solarized Dark
        {
          name = "Solarized8 Dark",
          colorscheme = "solarized8",
          before = [[
            vim.o.background = "dark"
          ]],
        },

        -- Base16 (selection populaire)
        {
          name = "Base16 Default Dark",
          colorscheme = "base16-default-dark",
        },
        {
          name = "Base16 Monokai",
          colorscheme = "base16-monokai",
        },
        {
          name = "Base16 Ocean",
          colorscheme = "base16-ocean",
        },
        {
          name = "Base16 Tomorrow Night",
          colorscheme = "base16-tomorrow-night",
        },

        -- ========================================
        -- THÈMES CLAIRS
        -- ========================================

        -- Catppuccin Latte
        {
          name = "Catppuccin Latte",
          colorscheme = "catppuccin-latte",
        },

        -- Tokyonight Day
        {
          name = "Tokyonight Day",
          colorscheme = "tokyonight-day",
        },

        -- Rose Pine Dawn
        {
          name = "Rose Pine Dawn",
          colorscheme = "rose-pine-dawn",
        },

        -- Kanagawa Lotus
        {
          name = "Kanagawa Lotus",
          colorscheme = "kanagawa-lotus",
        },

        -- Dayfox
        {
          name = "Dayfox",
          colorscheme = "dayfox",
        },

        -- Dawnfox
        {
          name = "Dawnfox",
          colorscheme = "dawnfox",
        },

        -- Material Lighter
        {
          name = "Material Lighter",
          colorscheme = "material",
          before = [[
            vim.g.material_style = "lighter"
          ]],
        },

        -- GitHub Light
        {
          name = "GitHub Light",
          colorscheme = "github_light",
        },

        -- Ayu Light
        {
          name = "Ayu Light",
          colorscheme = "ayu-light",
        },

        -- Edge Light
        {
          name = "Edge Light",
          colorscheme = "edge",
          before = [[
            vim.g.edge_style = "default"
            vim.o.background = "light"
          ]],
        },

        -- Everforest Light
        {
          name = "Everforest Light Soft",
          colorscheme = "everforest",
          before = [[
            vim.g.everforest_background = "soft"
            vim.o.background = "light"
          ]],
        },
        {
          name = "Everforest Light Medium",
          colorscheme = "everforest",
          before = [[
            vim.g.everforest_background = "medium"
            vim.o.background = "light"
          ]],
        },
        {
          name = "Everforest Light Hard",
          colorscheme = "everforest",
          before = [[
            vim.g.everforest_background = "hard"
            vim.o.background = "light"
          ]],
        },

        -- PaperColor Light
        {
          name = "PaperColor Light",
          colorscheme = "PaperColor",
          before = [[
            vim.o.background = "light"
          ]],
        },

        -- Solarized Light
        {
          name = "Solarized8 Light",
          colorscheme = "solarized8",
          before = [[
            vim.o.background = "light"
          ]],
        },

        -- Gruvbox Light
        {
          name = "Gruvbox Light",
          colorscheme = "gruvbox",
          before = [[
            vim.o.background = "light"
          ]],
        },

        -- Base16 Light
        {
          name = "Base16 Default Light",
          colorscheme = "base16-default-light",
        },
      },

      -- Options
      livePreview = true,
    })
  end
}
