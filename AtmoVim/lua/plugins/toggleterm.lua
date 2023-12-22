require('toggleterm').setup {
    shade_terminals = true,
    terminal_mappings = true,
    hide_numbers = true,
    direction = 'horizontal',
    close_on_exit = true,
    shell = vim.o.shell,
    border = 'double'
}
