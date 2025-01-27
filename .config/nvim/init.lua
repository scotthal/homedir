vim.opt.compatible = false
vim.cmd.filetype("on")
vim.cmd.syntax("on")
vim.opt.termguicolors = true

vim.opt.ruler = true
vim.opt.laststatus = 3
vim.opt.showmatch = true
vim.opt.autoindent = true
vim.opt.hlsearch = true

vim.opt.visualbell = true
vim.opt.backspace = {}
vim.opt.shada = {}

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.diagnostic.config({
  virtual_text = true,
})

vim.cmd.colorscheme("koehler")

require("config.lazy")

vim.cmd.colorscheme("catppuccin-mocha")

