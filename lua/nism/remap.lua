vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<F6>', ':lua ToggleRelNumber()<CR>', { noremap = true, silent = true })

-- Map Ctrl-i to insert mode with an underscore and return to normal mode
vim.api.nvim_set_keymap('n', '<C-i>', 'i_<Esc>r', { noremap = true })

-- Map Ctrl-a to append mode with an underscore and return to normal mode
vim.api.nvim_set_keymap('n', '<C-a>', 'a_<Esc>r', { noremap = true })
