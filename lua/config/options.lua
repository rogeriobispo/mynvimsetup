-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- Start with folds open
-- Fix temp/backup/undo dirs on macOS
local tmp = vim.fn.expand("~/.local/state/nvim/tmp")
vim.opt.directory = tmp -- swap files
vim.opt.backupdir = tmp -- backups
vim.opt.undodir = tmp -- undo history
