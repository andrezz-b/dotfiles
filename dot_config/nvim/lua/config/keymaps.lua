-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("n", "<leader>p", '"+p', opts)
keymap.set("n", "<leader>y", '"+y', opts)

-- Fast scrolling
keymap.set("n", "<C-d>", "<C-d>zz") -- Center screen after jump
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv") -- Center screen after search
keymap.set("n", "N", "Nzzzv")

-- Visual Mode: Stay in indent mode after shifting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Move lines up/down in Visual Mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader>p", '"+p', opts)
keymap.set("n", "<leader>y", '"+y', opts)
