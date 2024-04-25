
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- fzf for nvim
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- fast tasks/file switcher
  use('theprimeagen/harpoon')

  -- parser generator/library for syntax highlighting etc.
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- lsp auto-configuration
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},


		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  -- definition/references finder - good for overview of references
  use ('pechorin/any-jump.vim')

  -- undo history
  use('mbbill/undotree')
  -- git management
  use('tpope/vim-fugitive')

  -- 42-school must extensions
  use ('42Paris/42header')
  use ('cacharle/c_formatter_42.vim')

  -- easy commenting
  use ('tpope/vim-commentary')

  -- prettier to the eye
  use ('MunifTanjim/nui.nvim')
  use {
	  "folke/noice.nvim",
	  opts = function(_, opts)
		  opts.present.lsp_doc_border = true
	  end,
  }
  -- theme
  use { "savq/melange-nvim" }

end)
