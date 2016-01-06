let g:vimfiler_as_default_explorer = 1
" Enable file operation commands.
" Edit file by tabedit.
call vimfiler#custom#profile('default', 'context', {
      \ '-force-quit' : 1,
      \ '-status' : 1,
      \ '-winwidth' : 45,
      \ '-winminwidth' : 45
      \ })

" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

map <C-c>fo :<C-u>VimFiler<CR><C-u>
map <C-c>fe :<C-u>VimFilerExplorer<CR><C-u>
map <C-c>fc :<C-u>VimFilerCurrentDir<CR><C-u>
map <C-c>fb :<C-u>VimFilerBufferDir<CR><C-u>
map <C-c>ff :<C-u>VimFiler -project -force-quit -status<CR><C-u>
