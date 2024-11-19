local mason = require('mason').setup()

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_servers = {
	'bashls',
	'clangd',
	'cmake',
	'cssls',
	'html',
	'jsonls',
	'pyright',
	'rust_analyzer',
	'lua_ls',
	'ts_ls',
	'vimls',
	'yamlls',
	'typos_lsp',
}

local mason_lspconfig = require('mason-lspconfig').setup({
	ensure_installed = lsp_servers,
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({
				capabilities = lsp_capabilities,
				on_attach = on_attach,
				settings = {
					Lua = {
						diagnostics = {
							globals = { 'vim' }
						}
					}
				}
			})
		end,
	}
})

local lspconfig = require('lspconfig')










--local lsp_zero = require('lsp-zero')
--  --lsp_zero.extend_lspconfig()

--  lsp_zero.on_attach(function(client, bufnr)
--    lsp_zero.default_keymaps({buffer = bufnr})
--  end)

--  local lsp = require('lspconfig')

--  lsp.arduino_language_server.setup({
--	  cmd = {
--		  "arduino-language-server",
--		  "-cli-config", "/home/thiew/.arduino15/arduino-cli.yaml",
--		  "-fqbn", "arduino:avr:uno",
--		  "-cli", "/home/thiew/.local/bin/arduino-cli",
--	  },
--	  on_attach = lsp_zero.on_attach,
--	  filetypes = { "arduino" },
--  })



--require('mason').setup({})
--require('mason-lspconfig').setup({
--	handlers = {
--		function(server_name)
--			require('lspconfig')[server_name].setup({
--				capabilities = capabilities,
--				on_attach = on_attach,
--				settings = {
--					Lua = {
--						diagnostics = {
--							globals = { 'vim' }
--						}
--					}
--				}
--			})
--		end,
--	}
--})
--
--
