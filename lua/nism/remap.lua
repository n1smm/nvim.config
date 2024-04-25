--leader set
vim.g.mapleader = " "

--open netrw explorer in window
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
--open netrw as side window
vim.keymap.set("n", "<leader>tt", vim.cmd.Lexplore)

--switch from normal to relative numbering
vim.api.nvim_set_keymap('n', '<F6>', ':lua ToggleRelNumber()<CR>', { noremap = true, silent = true })

-- Map Ctrl-i to insert mode with an underscore and return to normal mode
vim.api.nvim_set_keymap('n', '<C-i>', 'i_<Esc>r', { noremap = true })

-- Map Ctrl-a to append mode with an underscore and return to normal mode
vim.api.nvim_set_keymap('n', '<C-a>', 'a_<Esc>r', { noremap = true })

--split window
vim.keymap.set("n", "<leader>vs", vim.cmd.vsp)
vim.keymap.set("n", "<leader>vv", vim.cmd.sp)

--writing and quitting
vim.keymap.set('n', '<leader>wq', '<cmd>lua WriteQuit()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ww", vim.cmd.wall)

-- switch windows
vim.keymap.set("n", "<leader>wl", '<C-w>l') 
vim.keymap.set("n", "<leader>wh", '<C-w>h')
vim.keymap.set("n", "<leader>wj", '<C-w>j')
vim.keymap.set("n", "<leader>wk", '<C-w>k')

--clear highlight of / search
vim.keymap.set("n", "<leader>nn", vim.cmd.noh)

