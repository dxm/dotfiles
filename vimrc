set nocompatible
set nobackup
set sh=/bin/bash

set incsearch
set ignorecase
set smartcase
set hlsearch
set smartcase
set history=10000

set autoindent
set smartindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set splitright
set splitbelow
set winminheight=0

set colorcolumn=+1
set textwidth=72
set numberwidth=5
set nowrap
set number

set t_Co=256
set background=dark

au FileType html setl ts=2 et sw=2 sts=2 sr ai
au FileType htmljinja setl ts=2 et sw=2 sts=2 sr ai
au FileType yaml setl ts=2 et sw=2 sts=2 sr ai

colorscheme default
filetype plugin indent on
syntax on

nnoremap <silent> <leader><cr> :noh<cr>
nnoremap <leader>D :put =strftime('# %Y-%m-%d (%a)')<cr>
nnoremap <leader>pp :set paste!<cr>
nnoremap <Leader>W :w !sudo tee % > /dev/null
