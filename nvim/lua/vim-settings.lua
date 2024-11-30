vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set guicursor=n-v-c-i:block")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set signcolumn=number")
vim.cmd("set cursorline")
vim.cmd("set foldmethod=indent")
vim.cmd("set foldlevel=20")

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#bababa", bold = true })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#545a7c" })
vim.api.nvim_set_hl(0, "NonText", { fg = "#bababa", bold = true })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#545a7c" })
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "None" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "None" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#bababa", bold = true })

-- add refactornvim
-- reactive (highlighting modes etc.)
-- add more lsp features
-- add todo and Note visual stuff
-- setup tmux pane focus keymaps
-- setup tmux session swap keymaps
-- install Aerospace tiling window manager
-- background of lsp notifications
-- lsp markers overlaying relative line numbers
-- python code completion
-- python debugging
-- page scrolling keymaps
-- implement smearing cursor (kitty?)
-- smooth scrolling on scroll in nvim????
-- scroll when approaching bottom or top of window
-- switch neoscroll to cinnamon for 'zz' after '<C-d>' or '<C-u>' 
