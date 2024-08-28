--my set.lua
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set nu")
vim.cmd("set smartindent")
vim.cmd("set nowrap")
vim.cmd("set noswapfile")
vim.cmd("set nobackup")
vim.cmd("set undofile")
vim.cmd("set nohlsearch")
vim.cmd("set incsearch")
vim.cmd("set scrolloff=8")

vim.g.mapleader = " "

--- right now I have to C-W C-W to go back and forth between different vim split screen
-------" Use ctrl-[hjkl] to select the active split!"
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
