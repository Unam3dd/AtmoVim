-- map leader

vim.g.mapleader = " "

-- Options
vim.o.encoding = "utf-8"
vim.o.number = true

-- tab replace by 4 space
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- enable the mouse
vim.o.mouse = "a"

-- Disable swap files
vim.cmd([[set noswapfile]])

-- Windows scoped
vim.wo.number = true

-- Buffer scoped
vim.bo.tabstop = 4

-- Command
vim.cmd([[filetype plugin indent on]])
vim.cmd([[set smartindent]])
vim.cmd([[set autoindent]])
vim.cmd([[set pumheight=50]])
vim.cmd([[set whichwrap+=<,>,[,]])

-- Coc Autocomplete
vim.cmd([[inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"]])

vim.opt.wildignore = { '*.o', '*.so','*.a', '__pycache__' }
