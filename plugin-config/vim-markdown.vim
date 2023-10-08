" Short links for tpope/vim-markdown plugin
autocmd Filetype markdown,liquid,text
	\ syn region markdownLink matchgroup=markdownLinkDelimiter
	\ start="(" end=")" keepend contained conceal contains=markdownUrl
autocmd Filetype markdown,liquid,text
	\ syn match markdownExt /{[.:#][^}]*}/ conceal contains=ALL

