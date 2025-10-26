vim.g.mapleader = " "

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = "Show diagnostics" })
