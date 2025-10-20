Neoscroll = require('neoscroll')

-- NVIM keybinds
vim.keymap.set({'n', 'v', 'x'}, '<M-j>', function()
    Neoscroll.ctrl_d({ duration = 250, easing = 'quadratic', info = 'zz'})
    end
)
vim.keymap.set({'n', 'v', 'x'}, '<M-k>', function()
    Neoscroll.ctrl_u({ duration = 250, easing = 'quadratic', info = 'zz'})
    end
)
vim.keymap.set({'n', 'v', 'x'}, 'zz', function() Neoscroll.zz({ half_win_duration = 250, easing = 'quadratic' }) end)

-- LSP keybinds
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Neotree keybinds
vim.keymap.set("n", "<leader>n", ":Neotree focus<CR>")

-- Telescope keybinds
vim.keymap.set("n", "<leader>ff", Builtin_Telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", Builtin_Telescope.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Refactoring keybinds
vim.keymap.set({'n', 'v', 'x'}, "<leader>re", ":Refactor extract ")
vim.keymap.set({'n', 'v', 'x'}, "<leader>rf", ":Refactor extract_to_file ")

-- CsvView keybinds
vim.keymap.set({'n', 'v', 'x'}, "<leader>c", ":CsvViewToggle<CR>")

-- None-ls keybinds
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
