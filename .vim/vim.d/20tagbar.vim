" tagbar
let g:tagbar_compat = 1
"let g:tagbar_width = 50

" HTML language for HTML
let g:tagbar_type_html = {
	\ 'ctagstype'	: 'HTML',
	\ }

" CSS language for TagBar
let g:tagbar_type_css = {
	\ 'ctagstype'	: 'Css',
		\ 'kinds'	: [
			\ 'c:classes',
			\ 's:selectors',
			\ 'i:identities',
		\ ]
	\ }

" Markdown language for Tagbar
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.vim/ext/markdown2ctags-master/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

" Go language for TagBar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : expand('~/.config/gotools/gotags'),
    \ 'ctagsargs' : '-sort -silent'
\ }

 let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
    \}

nnoremap <C-c>tt :<C-u>TagbarToggle<cr><C-u>
