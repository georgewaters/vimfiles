" Neomake
let g:neomake_open_list=2
let g:neomake_javascript_eslint_maker = {
    \ 'exe': 'npx',
    \ 'args': ['--quiet', 'eslint', '-f', 'compact'],
    \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
        \ '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
    \ 'cwd': '%:p:h',
\ }
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

" automatically call on write
call neomake#configure#automake('w')

" Indentation
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
