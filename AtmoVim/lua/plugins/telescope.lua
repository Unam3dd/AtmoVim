local builtin = require('telescope.builtin')

require('telescope').setup({
    defaults = {
        layout_config = {
            vertical = { width = 0.5 }
        }
    }
})

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>c', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
