let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]
"0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1
map <C-c>tr ::RainbowParentheses!!<cr>
