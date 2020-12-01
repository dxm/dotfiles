" .vimrc

set nocompatible

syntax on
filetype plugin indent on

set encoding=utf-8
set termencoding=utf-8
set title
set titlestring=%F
set sh=/bin/bash
set ttyfast
set history=10000

set nobackup
set hidden
set backspace=2

set incsearch
set hlsearch
set ignorecase
set smartcase

set scrolloff=3
set nostartofline

set ruler
set laststatus=2
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})
set showcmd
set cmdheight=2
set showmode
set number
set numberwidth=4
set colorcolumn=+1
set textwidth=72

set autoindent
set smartindent
set tabstop=5
set shiftwidth=4
set expandtab

set showmatch
set matchtime=1
set list
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·
set pastetoggle=<F2>

set splitbelow
set splitright
set winminheight=0

set wildmode=list:longest
set nowrap

runtime macros/matchit.vim

au FileType htmljinja setl ts=2 et sw=2 sts=2 sr ai
au FileType html setl ts=2 et sw=2 sts=2 sr ai
au FileType python setl ts=4 et sw=4 sts=4 sr ai
au FileType sh setl ts=4 et sw=4 sts=4 sr ai
au FileType vim setl ts=4 et sw=4 sts=4 sr ai
au FileType yaml setl ts=2 et sw=2 sts=2 sr ai

map <leader>b :Vexplore<CR>
nmap <leader>l :setlocal number!<cr>
nnoremap <silent> <leader><cr> :noh<cr>
cmap cwd lcd %:p:h
cmap w!! w !sudo tee % >/dev/null

set t_Co=256
set background=dark
colorscheme desert
syntax on
