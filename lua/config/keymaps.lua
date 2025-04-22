-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Find files using Telescope command-line sugar
vim.api.nvim_set_keymap("n", "<space>ff", "<cmd>Telescope find_files<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>fg", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>fb", "<cmd>Telescope buffers<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>fh", "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true })

-- Get out of integrated terminal
vim.api.nvim_set_keymap("t", "<Esc><Esc>", "<C-\\><C-N><cmd>FloatermToggle<cr>", { noremap = true, silent = true })

-- Floaterm remaps
vim.api.nvim_set_keymap("n", "<space>tg", "<cmd>FloatermToggle<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>tt", "<cmd>FloatermNew<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>tl", "<cmd>FloatermNext<cr>", { noremap = true, silent = true })
