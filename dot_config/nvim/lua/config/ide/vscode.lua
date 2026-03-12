if not vim.g.vscode then return end

local keymap = vim.keymap

keymap.set({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap.set({"n", "v"}, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
-- keymap.set({"n", "v"}, "<leader>sp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
-- keymap.set({"n", "v"}, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
keymap.set({"n", "v"}, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap.set({"n", "v"}, "<leader>cp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
keymap.set({"n", "v"}, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")
keymap.set({"n", "v"}, "<leader>fd", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")

keymap.set({"n", "v"}, "<leader>ex", "<cmd>lua require('vscode').action('workbench.view.explorer')<CR>")
keymap.set("n", "<Tab>", "<cmd>lua require('vscode').action('workbench.action.nextEditorInGroup')<CR>")
keymap.set("n", "<S-Tab>", "<cmd>lua require('vscode').action('workbench.action.previousEditorInGroup')<CR>")
