local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['tsserver'] = {'javascript', 'typescript'},
	['volar'] = {'vue'}
  }
})

-- see :help lsp-zero-guide:integrate-with-mason-nvim
-- to learn how to use mason.nvim with lsp-zero
require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  }
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
-- local cmp_format = require('lsp-zero').cmp_format()

require("luasnip.loaders.from_vscode").lazy_load({ path = { "~/AppData/Local/nvim-data/plugged/vscode-javascript/snippets" } })

cmp.setup({
	sources = {
		{name = 'nvim_lsp'},
		{name = 'luasnip'},
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
		['<Tab>'] = cmp_action.luasnip_supertab({behavior = 'select'}),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab({behavior = 'select'}),
		['<CR>'] = cmp.mapping.confirm({select = true}),
	}),

	-- formatting = cmp_format,
})

-- Config servers
lsp_zero.setup_servers({'tsserver'})
-- require'lspconfig'.glsl_analyzer.setup{}
