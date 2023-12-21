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
vim.cmd([[set nocompatible]])
vim.cmd([[filetype on]])
vim.cmd([[filetype plugin indent on]])
vim.cmd([[syntax on]])
vim.cmd([[set cursorline]])
vim.cmd([[set smartindent]])
vim.cmd([[set autoindent]])
vim.cmd([[set expandtab]])
vim.cmd([[set nobackup]])
vim.cmd([[set smartcase]])
vim.cmd([[set showmatch]])
vim.cmd([[set hlsearch]])
vim.cmd([[set history=1000]])
vim.cmd([[set wildmenu]])
vim.cmd([[set wildmode=list:longest]])
vim.cmd([[set pumheight=50]])
vim.cmd([[set whichwrap+=<,>,[,]])
vim.cmd([[set wildignore=*.docx,*.jpg,*.png,*.mp3,*.gif,*.pdf,*.exe,*.flv,*.img,*.xlsx,*.so,*.o,*.out,*.a]])

-- Coc Autocomplete
vim.cmd([[inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"]])

