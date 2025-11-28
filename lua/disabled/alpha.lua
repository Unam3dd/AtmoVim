-- Configuration moderne pour le dashboard alpha-nvim
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Configuration du dashboard
dashboard.section.header.val = {
  [[                                                                       ]],
  [[  █████╗ ████████╗███╗   ███╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
  [[ ██╔══██╗╚══██╔══╝████╗ ████║██╔═══██╗██║   ██║██║████╗ ████║ ]],
  [[ ███████║   ██║   ██╔████╔██║██║   ██║██║   ██║██║██╔████╔██║ ]],
  [[ ██╔══██║   ██║   ██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
  [[ ██║  ██║   ██║   ██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
  [[ ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝ ╚═════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
  [[                                                                       ]],
  [[                [ AtmoVim Configuration ]                             ]],
  [[                                                                       ]],
}

-- Boutons du dashboard
dashboard.section.buttons.val = {
  dashboard.button("e", "📁  Nouveau fichier", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "🔍  Rechercher fichiers", ":Telescope find_files <CR>"),
  dashboard.button("r", "📚  Fichiers récents", ":Telescope oldfiles <CR>"),
  dashboard.button("g", "🌳  Explorer fichiers", ":Neotree toggle <CR>"),
  dashboard.button("t", "💻  Terminal", ":ToggleTerm <CR>"),
  dashboard.button("c", "⚙️  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", "❌  Quitter", ":qa <CR>"),
}

-- Pied de page
dashboard.section.footer.val = {
  "Configuration Neovim moderne avec Lazy.nvim",
  "Développée avec ❤️ pour une expérience de codage optimale",
}

-- Configuration du thème
dashboard.config.opts.noautocmd = true

-- Appliquer la configuration
alpha.setup(dashboard.config) 