-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- d options will cut current content not delete,
-- it will cover origin copied content, follwing
-- setting will replace d with _d, which destroy
-- content register
vim.keymap.set({ "n", "v" }, "d", '"_d')
require("mini.move").setup({})
