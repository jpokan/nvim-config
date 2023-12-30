" Remaps
" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remap folding
nnoremap f za

" Find files using Telescope command-line sugar.
nnoremap <space>ff <cmd>Telescope find_files<cr>
nnoremap <space>fg <cmd>Telescope live_grep<cr>
nnoremap <space>fb <cmd>Telescope buffers<cr>
nnoremap <space>fh <cmd>Telescope help_tags<cr>

" Save with Ctrl + s
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>l
vnoremap <c-s> <Esc>:w<CR>

" Get out of integrated terminal
tnoremap <Esc><Esc> <C-\><C-N><cmd>FloatermToggle<cr>

" Floaterm remaps
nnoremap <space>tt <cmd>FloatermToggle<cr>

