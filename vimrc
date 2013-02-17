"===============================================================================
" Jon Jia's vimrc
" TODO
"	1. Tidy up
"
"===============================================================================


"==Startup=Settings=============================================================
set nocompatible					" don't worry about vi
set noerrorbells					" silence bells
let mapleader = ","					" set mapleader
set laststatus=2					" always show the status-line


"==Keyboard=Remaps==============================================================
" Map to interact with terminal
map \ :!
" For lazy fingers
nnoremap ; :
" ls present directory
nnoremap <leader>ls :!ls<cr>
" clear out search highlights on pushing 'enter'
nnoremap <cr> :noh<cr>
" Sane movement in files with long lines
nnoremap j gj
nnoremap k gk
nnoremap <leader>~ :execute InvertBackground()<CR>


"==Colors=======================================================================
colorscheme solarized
"set background=dark
set background=light
hi CursorLine cterm=NONE ctermbg=17
hi CursorColumn cterm=NONE ctermbg=17


"==General=Settings=============================================================
set number							" By default, show line numbers in code
syntax on							" Who doesn't love syntax highlighting?
set ruler							" Show where cursor is in body of text
set spell							" Turn on spellcheck
set spelllang=en					" Spell check in English...
set scrolloff=15 					" keep at least lines above/below
set undolevels=1000					" store up to 1000 undos
set cul								" highlight current line
set cuc								" highlight current column
set mouse=a							" Allow mouse to be used
set wildmenu						" Really nice tab completion when issuing commands
set hidden							" Not really sure what this does??


"==MacVim=======================================================================
if has("gui_macvim")
	set guioptions-=T
	set guioptions-=r
	set transparency=10
	set guifont=Menlo\ Regular:h12
endif


"==Plugins======================================================================
filetype plugin on

"--Powerline--------------------------------------------------------------------
let g:Powerline_symbols = 'fancy'
set encoding=utf-8				
set t_Co=256						

"--Syntastic--------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1


"==Backup=&=Undo================================================================
set undodir=~/.vim/undodir			"Set Undo directory
set undofile
"Use trailing backslashes so that the full path to file is saved
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//


"==Search=Settings==============================================================
set incsearch						" Search while typing
set hlsearch						" Highlight search results

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set shiftround
set tabstop=4
set smarttab 
set wildmode=list:full
filetype on 			"enable filetype detection
filetype indent on 		"enable filetype-specific indenting
set preserveindent 		"save as much indent structure as possible
set autoindent
set clipboard=unnamedplus	"make the vim clipboard accessible through multiple instances
set linebreak			"wrap the text when it hits the screen edge
set ignorecase 			"ignore case when searching for things

"Syntastic Settings

"PROSE Settings
autocmd BufRead *\.txt setlocal formatoptions=1
autocmd BufRead *\.txt setlocal lbr
autocmd BufRead *\.txt setlocal colorcolumn=80
autocmd BufRead *\.md setlocal colorcolumn=80
autocmd BufRead *\.rb setlocal colorcolumn=80
autocmd BufRead *\.c setlocal colorcolumn=80
"make it easier to move around in prose
autocmd BufRead *\.txt map j gj
autocmd BufRead *\.txt map k gk
autocmd BufRead *\.markdown map j gj
autocmd BufRead *\.markdown map k gk
"Wrap text at 80 characters for text files
autocmd Filetype text setlocal textwidth=80
"Put a row of equal signs right underneath a line
nnoremap <leader>1 yypVr=
"Put a row of minus signs for text files, then enter insert mode
nnoremap <leader>2 yypVr-o
"Wrap one line downwards of text to 80 characters
nnoremap <leader>f gq$
"Count the number of words
nnoremap <leader>w g<C-g>

"Extensions
nnoremap <leader>n :NERDTreeToggle<CR>

"Keyboard Remaps
"pressing '+' will bring the current line down
nnoremap + ddp
"pressing '-' will bring the current line up
nnoremap - ddkP
"pressing space will bring the current line to near the top
nnoremap <space> zt




"Move to the beginning of the line
nnoremap H 0
"Move to the end of the line
:nnoremap L $

"Delete to the end of the line
:nnoremap dL d$
"Delete to the beginning of the line
:nnoremap dH d0




"Can be combined with numbers to determine height/width of split

"Common abbreviations
:iabbrev @@ jonzjia@gmail.com
:iabbrev ccopy Copyright 2012 Jon Jia, all rights reserved

"Commonly used external commands

"LESS syntax
au BufNewFile,BufRead *.less set filetype=less



"--Programming-Settings---------------------------------------------------------
" make
nnoremap <leader>m :!make<cr>
" run lisp on current file
nnoremap <leader>c :!clisp %<cr>
" run present project
nnoremap <leader>r :!./strlist-test<cr>
" run valgrind on present project
nnoremap <leader>v :!valgrind --leak-check=yes ./strlist-test<cr>


"==Window=Navigation============================================================
" Split window vertically
nnoremap <Bar> <C-W>v<C-W><Right>
" Split window horizontally 
nnoremap _ <C-W>s<C-W><Down>
" toggle between windows
nnoremap <Tab> <C-W>w
" navigate through windows
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>


"==Meta=========================================================================
" Edit vimrc file in a horizontal window
nnoremap <leader>ev :split ~/dotfiles/vimrc<cr>
" Source vimrc file
nnoremap <leader>sv :source ~/dotfiles/vimrc<cr>


"==Functions====================================================================
:function! InvertBackground()
:	if &bg=="light"
:		se bg=dark
:	else
:		se bg=light
:	endif
:endfunction
