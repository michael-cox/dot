" If you don't number lines wrud
set number

" Syntax obviously
syntax on

" Tab width
set tabstop=4
filetype plugin indent on
set shiftwidth=4
set expandtab

" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
call plug#end()

" Background dark
autocmd vimenter * colorscheme gruvbox
set background=dark
