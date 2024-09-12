" barebones simple vimrc
" no package manager, no external files required, enough to make vanilla vim
" usable

set nocompatible
let mapleader = " "
set showcmd
set noswapfile
set autoread

" lazy fingers
nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap <cr> :noh<cr>

colorscheme habamax
set number
syntax on
set ruler
set scrolloff
set cursorline
set mouse=a
set wildmenu
set showmatch
set copyindent
set preserveindent
set smarttab
set autoindent
set linebreak
set incsearch
set hlsearch
set ignorecase

" window navigation
nnoremap <Bar> <C-W>v<C-W><Right>
nnoremap _ <C-W>s<C-W><Down>
nnoremap <Tab> <C-W>w
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
