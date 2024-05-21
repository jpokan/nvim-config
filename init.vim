runtime sets.vim

" Plugins with vim-plug
runtime plugins.vim

" Set bar and block cursors on diffrent modes
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Syntax highlighting enabled
syntax enable

" For Goyo

let g:goyo_width = 120
function! s:tweak_sunbather_colors()
	" Your molokai customizations
	highlight Directory ctermfg=15 guifg=#ffffff
endfunction
autocmd! ColorScheme sunbather call s:tweak_sunbather_colors()

" Theme tweaks
colorscheme sunbather
let g:airline_theme='minimalist'

runtime remaps.vim

" source all plugin configs
for f in split(globpath(stdpath('config').'/plugin-config', '**'), '\n')
	exe 'source' f
endfor

autocmd BufEnter * :syntax sync fromstart

