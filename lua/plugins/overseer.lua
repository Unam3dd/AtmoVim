return {
  {
    "stevearc/overseer.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
    },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 10,
        max_height = 20,
      },
    },
    cmd = { "OverseerToggle", "OverseerRun", "OverseerClose" },
    config = function()
      local overseer = require("overseer")
      overseer.setup({})

      -- Keymaps
      vim.keymap.set('n', '<leader>ot', '<cmd>OverseerToggle<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>or', '<cmd>OverseerRun<CR>', { noremap = true, silent = true })

      -- Fonction helper pour exécuter dans un terminal flottant
      local function run_in_floating_terminal(cmd, cwd)
        local Terminal = require("toggleterm.terminal").Terminal
        local cmd_str = table.concat(cmd, " ")
        
        local term = Terminal:new({
          cmd = cmd_str,
          dir = cwd,
          direction = "float",
          float_opts = {
            border = "rounded",
            width = math.floor(vim.o.columns * 0.8),
            height = math.floor(vim.o.lines * 0.6),
            winblend = 3,
          },
          close_on_exit = false,
          on_exit = function(term_obj)
            -- Le terminal reste ouvert pour voir la sortie
          end,
        })
        term:toggle()
      end

      -- ============================================================================
      -- TÂCHES MESON
      -- ============================================================================

      -- Meson: Setup (debug)
      overseer.register_template({
        name = "Meson: Setup (debug)",
        desc = "Configurer le répertoire de build en mode debug",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "meson", "setup", "build", "--reconfigure", "--buildtype=debug", "--prefix=" .. cwd .. "/dist" }
          -- Exécuter dans un terminal flottant
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          -- Retourner une tâche vide pour que overseer accepte le template
          return {
            cmd = { "true" },  -- Commande vide, le vrai travail est fait par toggleterm
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.filereadable("meson.build") == 1
          end,
        },
      })

      -- Meson: Setup (release)
      overseer.register_template({
        name = "Meson: Setup (release)",
        desc = "Configurer le répertoire de build en mode release",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "meson", "setup", "build", "--reconfigure", "--buildtype=release", "--prefix=" .. cwd .. "/dist" }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.filereadable("meson.build") == 1
          end,
        },
      })

      -- Meson: Setup (custom O2)
      overseer.register_template({
        name = "Meson: Setup (custom O2)",
        desc = "Configurer le répertoire de build avec optimisation O2",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { 
            "meson", 
            "setup", 
            "build", 
            "--reconfigure",
            "--buildtype=custom",
            "--optimization=2",
            "--prefix=" .. cwd .. "/dist",
          }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.filereadable("meson.build") == 1
          end,
        },
      })

      -- Meson: Compile
      overseer.register_template({
        name = "Meson: Compile",
        desc = "Compiler le projet Meson",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "meson", "compile", "-C", "build" }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.isdirectory("build") == 1
          end,
        },
      })

      -- Meson: Test
      overseer.register_template({
        name = "Meson: Test",
        desc = "Exécuter les tests Meson",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "meson", "test", "-C", "build" }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.isdirectory("build") == 1
          end,
        },
      })

      -- Meson: Install
      overseer.register_template({
        name = "Meson: Install",
        desc = "Installer le projet Meson",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "meson", "install", "-C", "build" }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.isdirectory("build") == 1
          end,
        },
      })

      -- ============================================================================
      -- TÂCHES MAKE
      -- ============================================================================

      -- Make: Build
      overseer.register_template({
        name = "Make: Build",
        desc = "Compiler avec make",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "make" }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.filereadable("Makefile") == 1
          end,
        },
      })

      -- Make: Clean
      overseer.register_template({
        name = "Make: Clean",
        desc = "Nettoyer avec make clean",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "make", "clean" }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.filereadable("Makefile") == 1
          end,
        },
      })

      -- Make: Fclean
      overseer.register_template({
        name = "Make: Fclean",
        desc = "Nettoyer complètement avec make fclean",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "make", "fclean" }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.filereadable("Makefile") == 1
          end,
        },
      })

      -- Make: All
      overseer.register_template({
        name = "Make: All",
        desc = "Compiler tout avec make all",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "make", "all" }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.filereadable("Makefile") == 1
          end,
        },
      })

      -- Make: Re
      overseer.register_template({
        name = "Make: Re",
        desc = "Recompiler avec make re",
        builder = function()
          local cwd = vim.fn.getcwd()
          local cmd = { "make", "re" }
          vim.schedule(function()
            run_in_floating_terminal(cmd, cwd)
          end)
          return {
            cmd = { "true" },
            cwd = cwd,
          }
        end,
        condition = {
          callback = function()
            return vim.fn.filereadable("Makefile") == 1
          end,
        },
      })
    end
  },
}

