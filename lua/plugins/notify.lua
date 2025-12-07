return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  config = function()
    local notify = require("notify")
    
    -- Configuration de nvim-notify avec de bons paramètres par défaut
    notify.setup({
      -- Animation des notifications
      stages = "fade_in_slide_out",
      
      -- Timeout par défaut (en millisecondes)
      timeout = 3000,
      
      -- Position sur l'écran (true = en haut, false = en bas)
      top_down = true,
      
      -- Icônes pour les différents niveaux
      icons = {
        ERROR = "󰅖",
        WARN = "󰀪",
        INFO = "󰋽",
        DEBUG = "󰆈",
        TRACE = "󰎁",
      },
      
      -- Configuration du rendu
      render = "default",
      
      -- Nombre maximum de notifications affichées simultanément
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
      
      -- Configuration des niveaux (0=TRACE, 1=DEBUG, 2=INFO, 3=WARN, 4=ERROR)
      level = 2, -- INFO par défaut
      
      -- Minimum de largeur pour les notifications
      minimum_width = 50,
      
      -- Configuration des fenêtres
      background_colour = "#000000",
      
      -- Animation (images par seconde)
      fps = 30,
      
      -- Configuration des bordures
      border_style = "rounded",
      
      -- Configuration des groupes de notifications
      groups = {
        search_count = false,  -- Ne pas afficher les compteurs de recherche
        lsp_progress = true,    -- Afficher la progression LSP
        lazy = true,            -- Afficher les notifications de lazy (mises à jour, installations)
      },
    })
    
    -- Remplacer les messages vim par défaut par nvim-notify
    vim.notify = notify
    
    -- Charger l'extension telescope pour l'historique des notifications
    vim.defer_fn(function()
      local ok, telescope = pcall(require, "telescope")
      if ok then
        telescope.load_extension("notify")
      end
    end, 100)
    
    -- Raccourcis clavier pour gérer les notifications
    vim.keymap.set("n", "<leader>un", function()
      notify.dismiss({ pending = true, silent = true })
    end, { desc = "Dismiss all notifications" })
    
    -- Historique des notifications (nécessite telescope)
    vim.keymap.set("n", "<leader>uh", function()
      local ok, telescope = pcall(require, "telescope")
      if ok and telescope.extensions.notify then
        telescope.extensions.notify.notify()
      else
        vim.notify("Telescope extension for notify not available", vim.log.levels.WARN)
      end
    end, { desc = "Notification history" })
    
    -- Notification lors de la sauvegarde d'un fichier
    vim.api.nvim_create_autocmd("BufWritePost", {
      group = vim.api.nvim_create_augroup("NotifySave", { clear = true }),
      callback = function(args)
        local filename = vim.fn.fnamemodify(args.file, ":t")
        local filepath = vim.fn.fnamemodify(args.file, ":~:.")
        notify(
          string.format("Fichier sauvegardé: %s", filename),
          vim.log.levels.INFO,
          {
            title = "💾 Sauvegarde réussie",
            timeout = 2000,
            icon = "󰄬",
          }
        )
      end,
    })
  end,
  dependencies = {
    "nvim-telescope/telescope.nvim", -- Pour l'historique des notifications
  },
}

