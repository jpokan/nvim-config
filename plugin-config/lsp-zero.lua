local lsp_zero = require('lsp-zero')
local lspconfig = require 'lspconfig'

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- Format on save
lsp_zero.format_on_save({
	format_opts = {
		async = true,
		timeout_ms = 10000,
	},
	servers = {
		['jsonls'] = { 'json' },
		['glsl_analyzer'] = { 'glsl', 'frag', 'vert' },
		['lua_ls'] = { 'lua' },
		['tsserver'] = { 'javascript', 'typescript' },
		['vimls'] = { 'vim' },
		-- ['volar'] = { 'vue' }
	}
})

-- see :help lsp-zero-guide:integrate-with-mason-nvim
-- to learn how to use mason.nvim with lsp-zero
require('mason').setup({})
require('mason-lspconfig').setup({
	-- https://lsp-zero.netlify.app/v3.x/guide/configure-volar-v2.html
	ensure_installed = {
		'tsserver',
		'volar',
	},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
		volar = function()
			require('lspconfig').volar.setup({})
		end,
		tsserver = function()
			local vue_typescript_plugin = require('mason-registry')
				.get_package('vue-language-server')
				:get_install_path()
				.. '/node_modules/@vue/language-server'
				.. '/node_modules/@vue/typescript-plugin'

			require('lspconfig').tsserver.setup({
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = vue_typescript_plugin,
							languages = { 'javascript', 'typescript', 'vue' }
						},
					}
				},
				filetypes = {
					'javascript',
					'javascriptreact',
					'javascript.jsx',
					'typescript',
					'typescriptreact',
					'typescript.tsx',
					'vue',
				},
			})
		end,
	},
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

-- Snippets
local luasnip = require('luasnip')
luasnip.setup({
	history = true,
	region_check_events = "InsertEnter",
	delete_check_events = "TextChanged,InsertLeave",
})
require("luasnip.loaders.from_vscode").lazy_load({ path = { "~/AppData/Local/nvim-data/plugged/vscode-javascript/snippets" } })

cmp.setup({
	-- to enable snippets to work
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'buffer' },
	},
	window = {
		completion = cmp.config.window.bordered({
			winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None"
		}),
		documentation = cmp.config.window.bordered({
			winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None"
		}),
	},
	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
		['<C-J>'] = cmp_action.luasnip_supertab({ behavior = 'select' }),
		['<C-K>'] = cmp_action.luasnip_shift_supertab({ behavior = 'select' }),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<C-A>'] = cmp.mapping.abort()
	}),
	formatting = {
		format = function(entry, vim_item)
			if entry.source.name == "buffer" then
				vim_item.menu = "[Buffer]"
			elseif entry.source.name == "nvim_lsp" then
				vim_item.menu = '[' .. entry.source.source.client.name .. ']'
			else
				vim_item.menu = '[' .. entry.source.name .. ']'
			end

			return vim_item
		end
	}
})

-- Config language servers
lspconfig.glsl_analyzer.setup {}
