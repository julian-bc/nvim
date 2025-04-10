vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true

-- window & buffer settings
opt.autoindent = true
opt.cursorline = true
opt.autowrite = true

-- set behavior of tab
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true
