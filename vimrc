"===============================================================================
" Jon Jia's vimrc
" TODO
"	1. Tidy up
"   2. Move things over to Vundle or Pathogen (ugh)
"
"===============================================================================


"==Startup=Settings=============================================================
set nocompatible					" don't worry about vi
set noerrorbells					" silence bells
let mapleader = ","					" set mapleader
set laststatus=2					" always show the status-line
set showcmd                         " display incomplete commands
"set autochdir                      " directory changes depending on the file
set noswapfile                      " stop vim's annoying swap files
set nobackup                        " live dangerously
set nowritebackup                   " see above
set autoread                        " re-read file when switching branches


"==Meta=========================================================================
" Edit vimrc file in a horizontal window
nnoremap <leader>ev :split ~/dotfiles/vimrc<cr>
" Source vimrc file
nnoremap <leader>sv :source ~/dotfiles/vimrc<cr>


"==Keyboard=Remaps==============================================================
" Map to interact with terminal
map \ :!
" For lazy fingers
nnoremap ; :
" clear out search highlights 'enter'
nnoremap <cr> :noh<cr>
" reposition text on screen
nnoremap <space> zt
" Sane movement in files with long lines
nnoremap j gj
nnoremap k gk
"Move to the beginning of the line
nnoremap H 0
"Move to the end of the line
nnoremap L $
" Invert background when I want a change
nnoremap <leader>~ :execute InvertBackground()<CR>
" Bring the current line up or down
nnoremap + ddp
nnoremap - ddkP
" Capitalize with Control-u
nnoremap <C-u> ~

"==Colors=======================================================================
colorscheme solarized
set background=dark
hi CursorLine cterm=NONE ctermbg=17
hi CursorColumn cterm=NONE ctermbg=17


"==General=Settings=============================================================
set number							" By default, show line numbers in code
syntax on							" Who doesn't love syntax highlighting?
set ruler							" Show where cursor is in body of text
set scrolloff=15 					" keep at least lines above/below
set undolevels=1000					" store up to 1000 undos
set cul								" highlight current line
set cuc								" highlight current column
set mouse=a							" Allow mouse to be used
set wildmenu						" tab completion for commands
set hidden							" Not really sure what this does??
set expandtab
set showmatch                       " highlight matching parens and brackets
set colorcolumn=80


"==MacVim=======================================================================
if has("gui_macvim")
    "colorscheme ir_dark
    "colorscheme solarized
    "colorscheme twilight
    "colorscheme github256
    "colorscheme iawriter
    "colorscheme liquidcarbon
    "colorscheme proton
    "colorscheme wombat
    "colorscheme gruvbox
    "colorscheme molokai
    colorscheme Tomorrow
    set vb
    set browsedir=buffer "gui opens current directory
	set guioptions-=T
	set guioptions-=L
	set guioptions-=r
	set transparency=0
	set guifont=Menlo\ Regular:h12
endif


"==Plugins======================================================================
filetype plugin on

"--NERDTREE---------------------------------------------------------------------
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

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


"==Search=Settings==============================================================
set incsearch						" Search while typing
set hlsearch						" Highlight search results

set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set shiftround
set tabstop=4
set smarttab 
set wildmode=list:full
set wildignore=*.o,*.obj,*.bak,*.exe "tab complete ignores
filetype on 			"enable filetype detection
filetype indent on 		"enable filetype-specific indenting
set preserveindent 		"save as much indent structure as possible
set autoindent
set linebreak			"wrap the text when it hits the screen edge
set ignorecase 			"ignore case when searching for things

"==JS===========================================================================
au FileType javascript nnoremap <buffer> <leader>, I//<esc>

"==LESS=========================================================================
au BufNewFile,BufRead *.less set filetype=less

"==C============================================================================
autocmd Filetype c setlocal ts=2 sw=2 expandtab
autocmd Filetype cpp setlocal ts=2 sw=2 expandtab
au FileType c nnoremap <buffer> <leader>, I//<esc>

"==Make=========================================================================
autocmd FileType make setlocal noexpandtab

"==Ruby=========================================================================
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
au FileType ruby nnoremap <buffer> <leader>, I#<esc>

"==Lisp=========================================================================
autocmd Filetype lisp setlocal ts=2 sw=2 expandtab

"==Scala========================================================================
autocmd Filetype scala setlocal ts=2 sw=2 expandtab

"==HTML=========================================================================
autocmd Filetype html setlocal ts=2 sw=2 expandtab

"==PYTHON=======================================================================
au FileType python nnoremap <buffer> <leader>, I#<esc>

"==Go===========================================================================
au FileType go setlocal noexpandtab

"==PROSE========================================================================
autocmd BufRead *\.md setlocal colorcolumn=80 textwidth=80
autocmd Filetype text setlocal textwidth=80 spell spelllang=en
"Put a row of equal signs right underneath a line
nnoremap <leader>1 yypVr=
"Put a row of minus signs for text files, then enter insert mode
nnoremap <leader>2 yypVr-
"Put a row of tildes for text files, then enter insert mode
nnoremap <leader>3 yypVr~
"Wrap one line downwards of text to 80 characters
nnoremap <leader>f gq$
"Count the number of words
nnoremap <leader>w g<C-g>

"--Programming-Settings---------------------------------------------------------
" make
nnoremap <leader>m :!make<cr>
" make clean
nnoremap <leader>c :!make clean<cr>
" run the run.sh file for the project
nnoremap <leader>r :!./run.sh<cr>

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


"==Functions====================================================================
:function! InvertBackground()
:	if &bg=="light"
:		se bg=dark
:	else
:		se bg=light
:	endif
:endfunction

:function! Light()
:   se bg=light
:endfunction

:function! Dark()
:   se bg=dark
:endfunction

"==Aliases======================================================================
" Man up
nnoremap <Left> :echoe "Use h you bum"<CR>
nnoremap <Right> :echoe "Use l you bum"<CR>
nnoremap <Up> :echoe "Use k you bum"<CR>
nnoremap <Down> :echoe "Use j you bum"<CR>

"===============================================================================
