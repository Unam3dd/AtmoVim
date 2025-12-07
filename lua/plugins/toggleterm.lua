return {
  {'akinsho/toggleterm.nvim', version = "*", opts = {
    shade_terminals = true,
    terminal_mappings = true,
    hide_numbers = true,
    direction = 'float',  -- Mode flottant par défaut
    close_on_exit = true,
    shell = vim.o.shell,
    border = 'rounded',
    float_opts = {
      border = 'rounded',
      width = function()
        return math.floor(vim.o.columns * 0.8)
      end,
      height = function()
        return math.floor(vim.o.lines * 0.6)
      end,
      winblend = 3,
    },
    size = function(term)
      if term.direction == "horizontal" then
        return 20  -- Hauteur pour terminal horizontal
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4  -- 40% de la largeur de l'écran pour vertical
      elseif term.direction == "float" then
        return nil  -- Utilise float_opts pour la taille
      end
    end,
  }}
}
