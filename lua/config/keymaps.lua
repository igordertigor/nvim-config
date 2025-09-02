-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-g>o", '“', { desc = "Smart opening quote" })
vim.keymap.set("i", "<C-g>c", '”', { desc = "Smart closing quote" })
vim.keymap.set("i", "<C-g>O", "‘", { desc = "Smart opening single quote" })
vim.keymap.set("i", "<C-g>C", "’", { desc = "Smart closing single quote" })
vim.keymap.set("i", "<C-g>.", "…", { desc = "Insert ellipsis" })
