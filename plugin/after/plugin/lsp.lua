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
	'pyright',
	'sqlls',
	'emmet_ls',
}

local function setup_arduino_language_server()
	require('lspconfig').arduino_language_server.setup({
		cmd = {
			"arduino-language-server", "/home/thiew/go/bin/arduino-language-server",
			"-clangd", "/usr/bin/clangd",
			"-cli", "/home/thiew/.local/bin/arduino-cli",
			"-cli-config", "/home/thiew/.arduino15/arduino-cli.yaml",
			"-fqbn", "arduino:avr:uno",
		},
		capabilities = lsp_capabilities,
		on_attach = on_attach,
		filetypes = { "arduino" },
	})
end

local mason_lspconfig = require('mason-lspconfig').setup({
	ensure_installed = lsp_servers,
	handlers = {
		function(server_name)
			if server_name == 'arduino_language_server' then
				-- capabilities = lsp_capabilities
				setup_arduino_language_server()
			else
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
			end
		end,
	}
})

local lspconfig = require('lspconfig')

