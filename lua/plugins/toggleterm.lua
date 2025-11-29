return {
  {'akinsho/toggleterm.nvim', version = "*", opts = {
    shade_terminals = true,
    terminal_mappings = true,
    hide_numbers = true,
    direction = 'horizontal',
    close_on_exit = true,
    shell = vim.o.shell,
    border = 'double',
    size = function(term)
      if term.direction == "horizontal" then
        return 20  -- Hauteur pour terminal horizontal
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4  -- 40% de la largeur de l'écran pour vertical
      end
    end,
  }}
}
