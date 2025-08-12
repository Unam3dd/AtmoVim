-- Configuration pour le plugin de commentaires
require('Comment').setup({
  padding = true,
  sticky = true,
  ignore = nil,
  toggler = {
    line = '<leader>cc',
    block = '<leader>cb',
  },
  opleader = {
    line = '<leader>c',
    block = '<leader>b',
  },
  extra = {
    above = '<leader>cO',
    below = '<leader>co',
    eol = '<leader>cA',
  },
  mappings = {
    basic = true,
    extra = true,
    extended = false,
  },
  pre_hook = nil,
  post_hook = nil,
}) 