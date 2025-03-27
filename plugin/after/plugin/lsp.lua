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
	'solidity_ls',
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

local lspconfig = require('lspconfig')
-- local solhint = require("efmls-configs.linters.solhint")
-- local prettier_d = require("efmls-configs.formatters.prettier_d")

-- require "lspconfig".efm.setup {
-- 	filetypes = { "lua", "solidity" },
--     init_options = {
-- 		documentFormatting = true,
-- 		documentRangeFormatting = true,
-- 		hover = true,
-- 		documentSymbol = true,
-- 		codeAction = true,
-- 		completion = true,
-- 	},
--     settings = {
--         rootMarkers = {".git/"},
--         languages = {
--             lua = {
--                 {formatCommand = "lua-format -i", formatStdin = true}
--             },
-- 			solidity = { solhint, prettier_d },
--         }
--     }
-- }

local function setup_html_language_server()
	require('lspconfig').html.setup({
		capabilities = lsp_capabilities,
		on_attach = on_attach,
		filetypes = { "html", "ejs" },
	})
end

local function setup_solidity_language_server()
	require('lspconfig').solidity_ls.setup({
		capabilities = lsp_capabilities,
		on_attach = on_attach,
		filetypes = { "solidity" },
		root_dir = lspconfig.util.root_pattern("truffle-config.js", "hardhat.config.js", "package.json", ".git"),
	})
end


local mason_lspconfig = require('mason-lspconfig').setup({
	ensure_installed = lsp_servers,
	handlers = {
		function(server_name)
			if server_name == 'arduino_language_server' then
				setup_arduino_language_server()
			-- elseif server_name == 'solidity_ls' then
			-- 	setup_solidity_language_server()
			-- elseif server_name == 'html' then
			-- 	setup_html_language_server()
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


