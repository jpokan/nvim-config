" Plugins will be downloaded under the specified directory.
call plug#begin(stdpath('data') . '/plugged')

" Declare the list of plugins.

" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jpokan/vim-sunbather'

" Editor
Plug 'tomtom/tcomment_vim'
Plug 'tikhomirov/vim-glsl'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Github Copilot
" Plug 'github/copilot.vim'

" Terminal window
Plug 'voldikss/vim-floaterm'

" File manager
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

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
Plug 'hrsh7th/cmp-buffer'
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" Snippets
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'xabikos/vscode-javascript'

" Prettier
" Plug 'prettier/vim-prettier'

" Formatter
Plug 'mhartington/formatter.nvim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

