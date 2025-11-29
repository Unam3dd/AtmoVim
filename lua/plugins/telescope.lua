return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local telescope = require('telescope')

    telescope.setup({
      defaults = {
        layout_config = {
          horizontal = { preview_width = 0.55 },
          vertical = { mirror = false },
        },
        sorting_strategy = "ascending",
        file_ignore_patterns = { "node_modules", ".git/" },
      },
      pickers = {
        find_files = {
          hidden = true,     -- parce que des fichiers cachés existent
        },
      },
    })

    -- Keymaps gentils
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files)
    vim.keymap.set('n', '<leader>fg', builtin.live_grep)
    vim.keymap.set('n', '<leader>fb', builtin.buffers)
    vim.keymap.set('n', '<leader>fr', builtin.oldfiles)
  end
}
