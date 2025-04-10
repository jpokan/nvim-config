-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.tabstop = 4 -- number of visual spaces per TAB
opt.softtabstop = 4 -- number of spaces inserted for a TAB
opt.shiftwidth = 4 -- number of spaces for each indentation
opt.expandtab = false -- use actual TAB characters, not spaces

-- hide ">" characters when using tab
vim.opt.list = false
