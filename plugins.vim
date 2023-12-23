" Plugins will be downloaded under the specified directory.
call plug#begin(stdpath('data') . '/plugged')

" Declare the list of plugins.

" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jpokan/vim-sunbather'

" Editor
Plug 'numToStr/Comment.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tikhomirov/vim-glsl'
Plug 'airblade/vim-gitgutter'

" File manager
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Typing
Plug 'jiangmiao/auto-pairs'

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
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" Snippets
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'xabikos/vscode-javascript'

" Prettier
Plug 'prettier/vim-prettier'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

