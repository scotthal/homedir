vim.cmd("set nocp")
vim.cmd("filetype on")
vim.cmd("syntax on")

vim.cmd("set noru")
vim.cmd("set laststatus=0")
vim.cmd("set sm")
vim.cmd("set ai")
vim.cmd("set hlsearch")

vim.cmd("set vb")
vim.cmd("set bs=\"\"")
vim.cmd("set viminfo=\"\"")

vim.cmd("set et")
vim.cmd("set ts=2")
vim.cmd("set sw=2")

vim.cmd.colorscheme("koehler")

require("config.lazy")

vim.cmd.colorscheme("catppuccin-mocha")

