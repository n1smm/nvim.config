require("CopilotChat").setup {
  debug = true, -- Enable debugging
  -- See Configuration section for rest
}
vim.g.copilot_filetypes = {
['*'] = false,
['javascript'] = true,
['typescript'] = true,
['vue'] = true,
['lua'] = true,
['html'] = true,
['css'] = true,
} 

vim.keymap.set("n", "<leader>co", vim.cmd.CopilotToggle)
