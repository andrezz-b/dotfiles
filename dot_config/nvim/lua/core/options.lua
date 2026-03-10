local opt = vim.opt

-- Line Numbers
opt.relativenumber = true -- Great for "12j" jumps
opt.number = true         -- Shows the current line number

-- Tabs & Indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

-- Search
opt.incsearch = true     -- Search as you type
opt.ignorecase = true     -- Case insensitive search...
opt.smartcase = true      -- ...unless you use a capital letter
opt.hlsearch = false      -- Don't keep words highlighted after search

-- Behavior
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.scrolloff = 8             -- Keep 8 lines visible at top/bottom
opt.mouse = "a"               -- Allow mouse usage