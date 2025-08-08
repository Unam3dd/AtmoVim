-- map leader
vim.g.mapleader = " "

-- Basic options
vim.o.encoding = "utf-8"
vim.o.number = true
vim.o.relativenumber = false

-- Tab configuration
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.smartindent = true
vim.o.autoindent = true

-- Mouse activation
vim.o.mouse = "a"

-- Disable swap files
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- User interface
vim.o.cursorline = true
vim.o.showmatch = true
vim.o.wildmenu = true
vim.o.wildmode = "list:longest"
vim.o.pumheight = 50
vim.o.whichwrap = "<,>,[,]"
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Performance
vim.o.lazyredraw = true
vim.o.updatetime = 300
vim.o.timeoutlen = 300

-- History
vim.o.history = 1000

-- Ignored files
vim.o.wildignore = "*.docx,*.jpg,*.png,*.mp3,*.gif,*.pdf,*.exe,*.flv,*.img,*.xlsx,*.so,*.o,*.out,*.a"

-- 42 configuration
vim.g.user42 = 'stales'
vim.g.mail42 = 'stales@student.42angouleme.fr'

-- Window-specific options
vim.wo.number = true
vim.wo.relativenumber = false
vim.wo.signcolumn = "yes"

-- Buffer-specific options
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = false

-- Disable automatic formatting globally
vim.g.autoformat = false
vim.g.format_on_save = false

-- Disable automatic checkhealth on startup
vim.g.health_check_on_startup = false

-- Improve autocompletion
vim.o.completeopt = "menu,menuone,noselect"
vim.o.pumheight = 10
vim.o.pumwidth = 50

-- Basic commands
vim.cmd([[set nocompatible]])
vim.cmd([[filetype on]])
vim.cmd([[filetype plugin indent on]])
vim.cmd([[syntax on]])

-- Optimizations for large files
vim.cmd([[
  augroup LargeFile
    autocmd!
    autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > 10000000 | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
  augroup END
]])

-- Configuration for config files
vim.cmd([[
  augroup ConfigFiles
    autocmd!
    autocmd FileType lua setlocal ts=2 sw=2 expandtab
    autocmd FileType json setlocal ts=2 sw=2 expandtab
    autocmd FileType yaml setlocal ts=2 sw=2 expandtab
    autocmd FileType markdown setlocal ts=2 sw=2 expandtab
  augroup END
]])

