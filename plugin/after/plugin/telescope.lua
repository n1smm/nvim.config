local builtin = require('telescope.builtin')
local fb_actions = require "telescope".extensions.file_browser.actions
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fw',function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>fn', ':lua require("telescope.builtin").lsp_workspace_symbols({symbols = {"function"}})<CR>', {noremap = true, silent = true})
-- telescope file browser
vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")


local ignore_filetypes_list = {
    "%.o", "venv", "__pycache__", "%.xlsx", "%.jpg", "%.png", "%.webp",
    "%.pdf", "%.odt", "%.ico", "%.svg", "%.zip", "%.tar", "%.gz",
	"%.xz", "%.bz2", "%.rar", "%.7z", "%.mp4", "%.avi", "%.mkv",
	"%.mp3", "%.flac", "%.wav", "%.ogg", "%.m4a", "%.opus", "%.flv",
	"%.mov", "%.wmv", "%.webm", "%.m4v", "%.mpg", "%.mpeg",
	"%.m2ts", "%.vob", "%.iso", "%.bin",
}


require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      --hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
			["%"] = fb_actions.create,
			["R"] = fb_actions.rename,
			["D"] = fb_actions.remove,
			["Y"] = fb_actions.copy,
			-- ["P"] = fb_actions.paste,
			["."] = fb_actions.toggle_hidden,
			["-"] = fb_actions.goto_parent_dir,
			["~"] = fb_actions.goto_home_dir,
			--toggle browser <C-f>
        },
      },
    },
  },
  defaults = {
	file_ignore_patterns = ignore_filetypes_list,
  },
}
require("telescope").load_extension "file_browser"
