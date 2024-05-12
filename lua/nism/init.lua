require("nism.remap")
require("nism.set")
require("nism.todolight")
vim.opt.termguicolors = true
vim.cmd.colorscheme 'melange'
--require("lspconfig").lua_ls.setup({})
require("CopilotChat").setup {
  debug = true, -- Enable debugging
  -- See Configuration section for rest
}

