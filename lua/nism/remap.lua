--leader set = space
vim.g.mapleader = " "

--open netrw explorer in window ; EXplorer = ex
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
--toggle netrw as side window ; Explorer to Side = es
vim.keymap.set("n", "<leader>es", vim.cmd.Lexplore)

--exit insert mode
vim.keymap.set("i", "<A-n>", '<C-c>')

--switch from normal to relative numbering
vim.api.nvim_set_keymap('n', '<F6>', ':lua ToggleRelNumber()<CR>', { noremap = true, silent = true })

-- insert before 1 char = ctr + i
--vim.api.nvim_set_keymap('n', '<C-i>', 'i_<Esc>r', { noremap = true })

-- insert after 1 char = ctr + a
vim.api.nvim_set_keymap('n', '<C-a>', 'a_<Esc>r', { noremap = true })

--copy/past to clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')

--split window ; Vertical Split = vs ; Horizontal Split = hs
vim.keymap.set("n", "<leader>vs", vim.cmd.vsp)
vim.keymap.set("n", "<leader>hs", vim.cmd.sp)

--writing and quitting ; Writeall = ww ; Write and Quit = wq
vim.keymap.set('n', '<leader>wq', '<cmd>lua WriteQuit()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ww", vim.cmd.wall)

-- switch windows ; w = Window hjkl= direction
vim.keymap.set("n", "<leader>wl", '<C-w>l')
vim.keymap.set("n", "<leader>wh", '<C-w>h')
vim.keymap.set("n", "<leader>wj", '<C-w>j')
vim.keymap.set("n", "<leader>wk", '<C-w>k')

--clear highlight of / search ; vb = Visual Bell
vim.keymap.set("n", "<leader>vb", vim.cmd.noh)

-- KEYBINDS OF OTHER PLUGINS
--
-- <leader>gs = git search (fugitive)
-- <leader>u  = Undotree toggle (UndoTree)
-- harpoon
-- <leader>a = add file to quick menu
-- control + e = toggle quick menu
-- alt + 1,2,3,4 = switch to 1st,2nd,3rd,4th saved window
--telescope - fzf engine
-- <leader>ff = Find Files
-- <leader>fg = Find Git files
-- <leader>fw = Find Word (uses ripgrep)
