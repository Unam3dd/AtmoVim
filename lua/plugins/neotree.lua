return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
	keys = {
    	{"<C-n>", ":Neotree reveal<CR>", desc = "Reveal Neotree", silent = true, noremap = true },
	},
	config = function()
        require("neo-tree").setup({
          popup_border_style = "rounded",
          close_if_last_window = true,
          enable_diagnostics = true,
          window = {
            position = "left",
            width = 30,
          },
          filesystem = {
            follow_current_file = true,
            group_empty_dirs = true,
            hijack_netrw_behavior = "open_default",
            filtered_items = {
              hide_dotfiles = false,
              hide_gitignored = false,
            },
            window = {
              mappings = {
                ["<TAB>"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
              },
            },
          },
        })

        -- Ouvrir automatiquement neo-tree dans les nouveaux tabs
        -- Avec vérification pour éviter les conflits avec buffers spéciaux
        vim.api.nvim_create_autocmd("TabNewEntered", {
          callback = function()
            local buftype = vim.bo.buftype
            local filetype = vim.bo.filetype

            -- Ne pas ouvrir NeoTree dans les buffers spéciaux
            local excluded_buftypes = { "help", "terminal", "quickfix", "prompt", "nofile" }
            local excluded_filetypes = { "neo-tree", "alpha", "dashboard", "Trouble", "toggleterm" }

            -- Vérifier si le buffer est valide
            local should_open = true
            for _, bt in ipairs(excluded_buftypes) do
              if buftype == bt then
                should_open = false
                break
              end
            end

            for _, ft in ipairs(excluded_filetypes) do
              if filetype == ft then
                should_open = false
                break
              end
            end

            -- Ouvrir NeoTree uniquement si c'est un buffer normal
            if should_open then
              vim.schedule(function()
                vim.cmd("Neotree show")
              end)
            end
          end,
        })
      end,
  }
}
