" first file to load with bundle

if !1 | finish | endif

if has('vim_starting')
	if &compatible
		set nocompatible
	endif

    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

for f in split(glob('~/.vim/vim.d/*.vim'), '\n')
    exe 'source' f
endfor

