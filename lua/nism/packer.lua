
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself

  use '~/.config/nvim/newplug'

  use 'wbthomason/packer.nvim'

  -- telescope - fzf for nvim
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	  "nvim-telescope/telescope-file-browser.nvim",
	  requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use {
	  'nvim-telescope/telescope-ui-select.nvim',
  requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  -- fzf-lua
  use { "ibhagwan/fzf-lua",
  requires = { "nvim-tree/nvim-web-devicons" }
}

  -- fast tasks/file switcher
  use('theprimeagen/harpoon')

  --multiline editing
  use('mg979/vim-visual-multi')

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
  use ('saadparwaiz1/cmp_luasnip')
  use ("rafamadriz/friendly-snippets")

  -- definition/references finder - good for overview of references
  use ('pechorin/any-jump.vim')

  -- folding plugin
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

  -- colored parentheses
  use ('luochen1990/rainbow')

  --debugger DAP
  -- use {
	  -- 'mfussenegger/nvim-dap',
	  -- requires = {
		  -- {'nvim-neotest/nvim-nio'},
		  -- {'theHamsta/nvim-dap-virtual-text'},
		  -- {'rcarriga/nvim-dap-ui'},
		  -- {'mfussenegger/nvim-dap-python'},
		  -- {'nvim-telescope/telescope-dap.nvim'},
	  -- }
  -- }

  --copilot
  use ('github/copilot.vim')
  --copilot chat
  use {
		  "CopilotC-Nvim/CopilotChat.nvim",
		  branch = "main",
		  dependencies = {
			  { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			  { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		  },
		  opts = {
			  debug = true, -- Enable debugging
			  -- See Configuration section for rest
		  },
		  -- See Commands section for default commands if you want to lazy load on them
  }

	  --auto save
  use({
	  "Pocco81/auto-save.nvim",
	  config = function()
		  require("auto-save").setup {
			  enabled = false,
			  -- your config goes here
			  -- or just leave it empty :)
		  }
	  end,
  })

  -- undo history
  use('mbbill/undotree')
  -- git management
  use('tpope/vim-fugitive')
  -- lazygit
  use({
	  "kdheepak/lazygit.nvim",
	  -- optional for floating window border decoration
	  requires = {
		  "nvim-lua/plenary.nvim",
	  },
  })

  --live html,css,js preview - http server
  use('turbio/bracey.vim')
  --nvim emmet
  use({'olrtg/nvim-emmet',
  	config = function()
		vim.keymap.set({"n", "v"}, "<leader>em", require('nvim-emmet').wrap_with_abbreviation)end
  })
  use('epilande/vim-react-snippets')

  --backend, databases, etc.
  --database manager
  use('tpope/vim-dadbod')
  use('kristijanhusak/vim-dadbod-ui')
  use('kristijanhusak/vim-dadbod-completion')
  --rest client
  -- use('NTBBloodbath/rest.nvim')
  use('diepm/vim-rest-console')

  --arduino environment
  use {'stevearc/vim-arduino'}
  -- use {'sudar/vim-arduino-syntax'}

  --solidity
  use {'tomlion/vim-solidity'}
  -- use {'ChristianChiarulli/vim-solidity'}



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
  -- UI improvements
  -- use ('VonHeikemen/fine-cmdline.nvim')
  use ('VonHeikemen/searchbox.nvim')
  use {'stevearc/dressing.nvim'}

  --ansiesc support
  use ('powerman/vim-plugin-AnsiEsc')
  -- theme
  use { "savq/melange-nvim" }

end)
