-- Basic options
vim.o.encoding = "utf-8"
vim.o.number = true
vim.o.relativenumber = false
vim.wo.signcolumn = "yes"

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
vim.o.cursorline = false
vim.o.showmatch = true
vim.o.wildmenu = true
vim.o.wildmode = "longest:full,full"
vim.o.wildignorecase = true
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

-- Disable automatic formatting globally
vim.g.autoformat = false
vim.g.format_on_save = false

-- Improve autocompletion
vim.o.completeopt = "menu,menuone,noselect"
vim.o.pumwidth = 50

-- Basic commands
vim.cmd([[filetype plugin indent on]])

-- Optimizations for large files
vim.cmd([[
  augroup LargeFile
    autocmd!
    autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > 10000000 | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
  augroup END
]])

