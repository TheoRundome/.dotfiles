vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true 

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.showmode = false

-- Maping jj to escape insert mode
vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- Disable mouse
-- vim.opt.mouse = ""
