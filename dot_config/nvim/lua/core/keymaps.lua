local keymap = vim.keymap

-- Better window navigation (Alt + hjkl)
-- Works in Neovim and can be mapped in TWMs
-- keymap.set("n", "<A-h>", "<C-w>h")
-- keymap.set("n", "<A-j>", "<C-w>j")
-- keymap.set("n", "<A-k>", "<C-w>k")
-- keymap.set("n", "<A-l>", "<C-w>l")

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

