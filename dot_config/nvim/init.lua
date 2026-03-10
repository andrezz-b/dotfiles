-- Set leader key to Space (Must be first!)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load core settings
require("core.options")
require("core.keymaps")

-- Environment-specific logic
if vim.g.vscode then
    require("ide.vscode")
elseif vim.g.ideavim then
    require("ide.intellij")
else
    -- Standard Terminal Neovim defaults
    vim.opt.termguicolors = true
end