local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fw',function() 
--open telescope one directory up
vim.keymap.set('n', '<leader>fu', builtin.file_browser({ cwd = '..' }))
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}

vim.api.nvim_set_keymap('n', '<leader>fu', "<cmd>lua require('telescope.builtin').find_files({ cwd = '..' })<CR>", { noremap = true, silent = true })
