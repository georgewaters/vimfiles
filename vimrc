set hidden
set history=100
set exrc
set secure
set backupcopy=yes
set encoding=utf-8

filetype on
syntax on

" Indentation
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

set nu

set clipboard=unnamedplus

" Enable persistent undo.
set undofile
set undodir=~/.vim-undo
set undolevels=1000
set undoreload=10000

" Coloured column at 80 character mark
set colorcolumn=80
highlight ColorColumn ctermbg=8

" Auto-reload ~/.vimrc on save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Automatically remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Install Vim Plug if it doesn't already exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install Vim Plugins with Vim Plug
call plug#begin('~/.vim/plugged')
Plug 'beyondwords/vim-twig'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jiangmiao/auto-pairs'
Plug 'krisajenkins/vim-projectlocal'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'neomake/neomake'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'ajh17/VimCompletesMe'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'styled-components/vim-styled-components'
call plug#end()

" Colour scheme from https://github.com/morhetz/gruvbox
colorscheme gruvbox
set background=dark

" Nerd Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-\> :NERDTreeToggle %<CR>

" ProjectLocal
let g:projectlocal_project_markers = ['.git', '.vimrc']

" Vim Markdown
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1

" Status line
set statusline+=%{gutentags#statusline()}

" Gutentags
let g:gutentags_define_advanced_commands=1
