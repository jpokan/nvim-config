highlight link vueTemplateStringLiteral Constant
syntax region vueTemplateStringLiteral start=+`+ end=+`+ containedin=htmlString contained

highlight link vueTemplateStringLiteralBraces Statement
syntax region VueTemplateStringLiteralBraces start=+${+ end=+}+ containedin=vueTemplateStringLiteral contained

highlight link vueTemplateStringLiteralVariable Normal
syntax region vueTemplateStringLiteralVariable start=+${\zs+ end=+.\ze}+ containedin=vueTemplateStringLiteralBraces contained

" highlight link vueBinding Statement
" syntax region vueBinding start=+:.*="+ end=+"+ containedin=htmlTag contained

" highlight link vueBindingString Constant
" syntax region vueBindingString start=+"+ end=+"+ containedin=vueBinding contained

" syntax region vueTemplate start="\<template\>" end="\</template\>"
