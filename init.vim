set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set conceallevel=2
set nowrap

" Displays correct vim encondings on for emojis (win11)
set encoding=utf-8

" Disable Vim Beep/GUI flashing (win11)
set vb t_vb=

" Display command that is being typed
set showcmd

" Search folders recursively to provide tab completion
set path+=**

" Display matching files when using tab
set wildmenu

" Set bar and block cursors on diffrent modes
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Set autosave when editing different files
set autowrite

" Plugins will be downloaded under the specified directory.
call plug#begin(stdpath('data') . '/plugged')

" Declare the list of plugins.

" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'jpokan/vim-sunbather'

" Editor
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
" Plug 'mhinz/vim-signify'
Plug 'tikhomirov/vim-glsl'
Plug 'airblade/vim-gitgutter'

" File manager
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'

" Markdown
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Lightweight wiki for Vim
Plug 'lervag/wiki.vim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

"Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Show hidden files on NERDTree
let NERDTreeShowHidden=1
" Initiate nvim with file tree open
autocmd VimEnter * NERDTree | wincmd p

" Nord theme config
let g:nord_bold_vertical_split_line = 1

" Italics and syntax enabled for nord theme
let g:nord_italic = 1

" Syntax highlighting enabled
syntax enable

" Settings for vimwiki
"let g:wiki_root = '~/notes'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'

" Short links for tpope/vim-markdown plugin
autocmd Filetype markdown,liquid,text
	\ syn region markdownLink matchgroup=markdownLinkDelimiter
	\ start="(" end=")" keepend contained conceal contains=markdownUrl
autocmd Filetype markdown,liquid,text
	\ syn match markdownExt /{[.:#][^}]*}/ conceal contains=ALL

" Customize ColorScheme and Highlights
colorscheme	sunbather
let g:airline_theme='minimalist'
set background=dark
highlight Directory ctermfg=15
" highlight Visual ctermbg=231

" Remaps
" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remap folding
nnoremap f za

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Customize tpope/vim-commentary shortcut
map <C-_> <Plug>Commentary

" Config LSP-ZERO

lua <<EOF

-- Configure telescope
require('telescope').setup({

extensions = {
	file_browser = {
			hidden = { file_browser = true, folder_browser = true },
		},
	},
})
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
	"n",
	"<space>fb",
	":Telescope file_browser<CR>",
	{ noremap = true }
)

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

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

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
		['<Tab>'] = cmp_action.luasnip_supertab({behavior = 'select'}),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab({behavior = 'select'}),
		['<CR>'] = cmp.mapping.confirm({select = true}),
	})
})
EOF

