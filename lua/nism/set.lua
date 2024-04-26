vim.g.user = "n1smm"
vim.g.mail = "tjaz.juvan@gmail.com"

--setting copy paste TODO (not working properly)
vim.api.nvim_set_option("clipboard","unnamed")

-- Better command-line completion
vim.o.wildmenu = true

-- Show partial commands in the last line of the screen
vim.o.showcmd = true

-- Highlight searches (use <C-L> to temporarily turn off highlighting)
-- Commented out as Lua doesn't directly support this feature

-- Use case insensitive search, except when using capital letters
vim.o.ignorecase = true
vim.o.smartcase = true

-- Allow backspacing over autoindent, line breaks, and start of insert action
vim.o.backspace = 'indent,eol,start'

-- Keep the same indent as the current line when opening a new line
vim.o.autoindent = true
vim.o.smartindent = true

-- Stop certain movements from always going to the first character of a line
vim.o.startofline = false

-- Display the cursor position on the last line of the screen or in the status line
vim.o.ruler = true

-- Always display the status line, even if only one window is displayed
vim.o.laststatus = 2

-- Instead of failing a command because of unsaved changes, raise a dialogue asking to save
vim.o.confirm = true

-- Use visual bell instead of beeping when doing something wrong
vim.o.visualbell = true

-- Reset the terminal code for the visual bell
vim.o.t_vb = ''

-- Enable filetype plugins
vim.cmd('filetype plugin on')

-- Enable filetype indent settings
vim.cmd('filetype indent on')

-- Set the width of an indentation level to 4 spaces
vim.o.shiftwidth = 4

-- Set the width of a tab character to 4 spaces
vim.o.tabstop = 4

-- Use actual tab characters instead of spaces when indenting
vim.o.expandtab = false

-- FUNCTIONS --

--numbers
vim.wo.number = true
function ToggleRelNumber()
    if vim.o.relativenumber then
        vim.o.relativenumber = false
    else
        vim.o.relativenumber = true
    end
end

--write n quit
function WriteQuit()
	vim.cmd('w')
	vim.cmd('q')
end