"Settings
set nocompatible
set laststatus=2
let g:Powerline_symbols = 'fancy'
let mapleader = ","
map \ :!

"Colors

"Light
"set background=light
hi CursorLine cterm=NONE ctermbg=17
hi CursorColumn cterm=NONE ctermbg=17

"Dark
set background=light
set hidden
colorscheme solarized


" Get rid of errors
set noerrorbells

set encoding=utf-8
set t_Co=256
filetype plugin on
set number
syntax on
set ruler
set incsearch
set hlsearch
set spell
set spelllang=en
"clear out highlights left by search after pressing enter
nnoremap <cr> :noh<cr>
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set shiftround
set tabstop=4
set smarttab 
set scrolloff=25 		"keep at least 25 lines above/below
set undolevels=1000		"store up to 1000 undos
set cul					"highlight current line
set cuc					"highlight column line as well. This is just kind of cool to watch...
set mouse=a
set wildmenu			"Really nice tab completion when using :b or :e
filetype on 			"enable filetype detection
filetype indent on 		"enable filetype-specific indenting
set preserveindent 		"save as much indent structure as possible
set autoindent
set clipboard+=unnamed	"make the vim clipboard accessible through multiple instances
set linebreak			"wrap the text when it hits the screen edge
set ignorecase 			"ignore case when searching for things

"Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1

"Macvim specific settings
if has("gui_macvim")
	set guioptions-=T
	set guioptions-=r
	set transparency=0
	set guifont=Menlo\ Regular:h12
endif

"PROSE Settings
autocmd BufRead *\.txt setlocal formatoptions=1
autocmd BufRead *\.txt setlocal lbr
autocmd BufRead *\.txt setlocal colorcolumn=80
"make it easier to move around in prose
autocmd BufRead *\.txt map j gj
autocmd BufRead *\.txt map k gk
autocmd BufRead *\.markdown map j gj
autocmd BufRead *\.markdown map k gk
"Wrap text at 80 characters for text files
autocmd Filetype text setlocal textwidth=80
"Put a row of equal signs right underneath a line
:nnoremap <leader>1 yypVr=
"Put a row of minus signs for text files, then enter insert mode
:nnoremap <leader>2 yypVr-o
"Wrap one line downwards of text to 80 characters
:nnoremap <leader>f gq$
"Count the number of words
:nnoremap <leader>w g<C-g>

"Extensions
:nnoremap <leader>n :NERDTreeToggle<CR>

"Keyboard Remaps
"pressing '+' will bring the current line down
:nnoremap + ddp
"pressing '-' will bring the current line up
:nnoremap - ddkP
"pressing space will bring the current line to near the top
:nnoremap <space> zt


"Sane movement in files with long lines
nnoremap j gj
nnoremap k gk

"Edit vimrc file in a split window
:nnoremap <leader>ev :split ~/dotfiles/vimrc<cr>
"Source vimrc file
:nnoremap <leader>sv :source ~/dotfiles/vimrc<cr>

"Move to the beginning of the line
nnoremap H 0
"Move to the end of the line
:nnoremap L $

"Delete to the end of the line
:nnoremap dL d$
"Delete to the beginning of the line
:nnoremap dH d0

"Window Navigation

"Toggle between windows
:nnoremap <Tab> <C-W>w

"Leader navigation
:nnoremap <leader>h :wincmd h<cr>
:nnoremap <leader>j :wincmd j<cr>
:nnoremap <leader>k :wincmd k<cr>
:nnoremap <leader>l :wincmd l<cr>

"Can be combined with numbers to determine height/width of split
"Split window vertically
:nnoremap <Bar> <C-W>v<C-W><Right>
"Split window horizontally 
:nnoremap _ <C-W>s<C-W><Down>

"Common abbreviations
:iabbrev @@ jonzjia@gmail.com
:iabbrev ccopy Copyright 2012 Jon Jia, all rights reserved

"Commonly used external commands
:nnoremap <leader>ls :!ls<cr>
:nnoremap <leader>m :!make<cr>
:nnoremap <leader>c :!make clean<cr>
:nnoremap <leader>r :!./mdb-lookup my-mdb<cr>
:nnoremap <leader>v :!valgrind --leak-check=yes ./mdb-lookup /home/jae/cs3157-pub/bin/mdb-cs3157<cr>

"LESS syntax
au BufNewFile,BufRead *.less set filetype=less

"Set Undo directory
set undodir=~/.vim/undodir
set undofile
