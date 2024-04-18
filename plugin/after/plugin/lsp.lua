local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

--lsp_zero.setup_servers({
--	'clangd',
--	'cmake',
--	'vscode-html-language-server',
--	'rust-analyzer',
--	'css-variables-language-server',
--	'vscode-json-language-server',
--	'bash-language-server',
--})

require('mason').setup({})
require('mason-lspconfig').setup({
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	}
})
