if not vim.g.vscode then
  return
end

local keymap = vim.keymap.set
local vscode = require("vscode")

-- ============================================================================
-- SETTINGS (match ideavimrc)
-- ============================================================================

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- vim.opt.clipboard:append("unnamedplus")
vim.opt.scrolloff = 8

vim.g.mapleader = " "

-- ============================================================================
-- SCROLLING / SEARCH
-- ============================================================================

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- ============================================================================
-- VISUAL MODE IMPROVEMENTS
-- ============================================================================

keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- ============================================================================
-- CLIPBOARD
-- ============================================================================

keymap({ "n", "v" }, "<leader>y", '"+y')
keymap("n", "<leader>p", '"+p')

-- ============================================================================
-- FILE / SEARCH
-- ============================================================================

keymap({ "n", "v" }, "<leader>ff", function()
  vscode.action("workbench.action.quickOpen")
end)

keymap({ "n", "v" }, "<leader>fs", function()
  vscode.action("workbench.action.findInFiles")
end)

-- ============================================================================
-- CODE ACTIONS / REFACTORING
-- ============================================================================

keymap({ "n", "v" }, "<leader>a", function()
  vscode.action("editor.action.quickFix")
end)

keymap({ "n", "v" }, "<leader>rn", function()
  vscode.action("editor.action.rename")
end)

-- ============================================================================
-- CODE NAVIGATION
-- ============================================================================

keymap("n", "gd", function()
  vscode.action("editor.action.revealDefinition")
end)

keymap("n", "gi", function()
  vscode.action("editor.action.goToImplementation")
end)

-- ============================================================================
-- TERMINAL
-- ============================================================================

keymap({ "n", "v" }, "<leader>t", function()
  vscode.action("workbench.action.terminal.toggleTerminal")
end)

-- ============================================================================
-- TABS
-- ============================================================================

keymap("n", "<leader>tn", function()
  vscode.action("workbench.action.nextEditor")
end)

keymap("n", "<leader>tp", function()
  vscode.action("workbench.action.previousEditor")
end)

keymap("n", "<leader>x", function()
  vscode.action("workbench.action.closeActiveEditor")
end)

-- ============================================================================
-- SPLITS (match ideavimrc)
-- ============================================================================

keymap("n", "<C-w>|", function()
  vscode.action("workbench.action.splitEditorRight")
end)

keymap("n", "<C-w>-", function()
  vscode.action("workbench.action.splitEditorDown")
end)
