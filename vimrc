"===============================================================================
" Jon Jia's vimrc
" TODO
"	1. Tidy up
"
"===============================================================================

"==Vundle-Settings==============================================================
set nocompatible					" don't worry about vi
filetype off                        " required for Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required for Vundle
Bundle 'gmarik/Vundle.vim'

"==Github-Repos=================================================================

"--Colors-----------------------------------------------------------------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'sjl/badwolf'

"--Syntax-----------------------------------------------------------------------
Bundle 'tpope/vim-markdown'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'

"--Useful-----------------------------------------------------------------------
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'junegunn/goyo.vim'

" vim-scripts repos
Bundle 'bufexplorer.zip'

" non-Github repos
" Bundle 'git://git.wincent.com/command-t.git'

" Git repos on local machine (ie, when working on your own plugin)
" Bundle '~/path/to/plugin'

call vundle#end()
filetype plugin indent on           " required for Vundle

"--Vundle-Help------------------------------------------------------------------
" :BundleList                       - list configured bundles
" :BundleInstall(!)                 - install (update) bundles
" :BundleSearch(!) foo              - search (or refresh cache first) for foo
" :BundleClean(!)                   - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details

"==Startup=Settings=============================================================
let mapleader = ","					" set mapleader
set noerrorbells					" silence bells
set laststatus=2					" always show the status-line
set showcmd                         " display incomplete commands
set noswapfile                      " stop vim's annoying swap files
set nobackup                        " live dangerously
set nowritebackup                   " see above
set autoread                        " re-read file when switching branches


"==Meta=========================================================================
" Edit vimrc file in a horizontal window
nnoremap <leader>ev :split ~/dotfiles/vimrc<CR>
" Source vimrc file
nnoremap <leader>sv :source ~/dotfiles/vimrc<CR>
" Open up scratch file for the given server
nnoremap <leader>c :split ~/dotfiles/scratch<CR>


"==Keyboard=Remaps==============================================================
" Map to interact with terminal
map \ :!
" For lazy fingers
nnoremap ; :
" clear out search highlights 'enter'
nnoremap <cr> :noh<cr>
" reposition text on screen
nnoremap <Leader><space> zt
" Sane movement in files with long lines
nnoremap j gj
nnoremap k gk
" Move to the beginning of the line
nnoremap H 0
" Move to the end of the line
nnoremap L $
" Invert background when I want a change
nnoremap <leader>~ :execute InvertBackground()<CR>
" Emacs movement in commands
cnoremap <C-a> <home>
cnoremap <C-e> <end>
" del key acts wonky sometimes. this fixes it
set backspace=indent,eol,start

nnoremap <F1> :execute FormatErr()<CR>
nnoremap <F2> :execute JSONFormat()<CR>

"==Colors=======================================================================
colorscheme Tomorrow
set background=light

"==General=Settings=============================================================
set number							" By default, show line numbers in code
syntax on							" Who doesn't love syntax highlighting?
set ruler							" Show where cursor is in body of text
set scrolloff=15 					" keep at least lines above/below
set undolevels=1000					" store up to 1000 undos
set cursorline						" highlight current line
set mouse=a							" Allow mouse to be used
set wildmenu						" tab completion for commands
set hidden							" Not really sure what this does??
set expandtab
set showmatch                       " highlight matching parens and brackets
set colorcolumn=80


"==Folding======================================================================
set foldmethod=marker
nnoremap <space> za
autocmd BufWrite * mkview
autocmd BufRead * silent loadview
set foldcolumn=4
" make it super simple to add a fold
ab FOLD -- {{{<CR><CR>-- }}}
" toggle paste mode
nnoremap <Leader>p :set paste! number!<CR> :call FoldColumnToggle()<CR>


"==MacVim=======================================================================
if has("gui_macvim")
    colorscheme hybrid-light
    set vb
    set browsedir=buffer "gui opens current directory
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set transparency=0
    set guifont=Menlo\ Regular:h12
endif

"==Plugins======================================================================

"--NERDTREE---------------------------------------------------------------------
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"--vim-airline------------------------------------------------------------------
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme             = 'powerlineish'
let g:airline#extensions#branch#enabled     = 1
let g:airline#extensions#syntastic#enabled  = 1
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_symbols.branch     = '⭠'
let g:airline_symbols.readonly   = '⭤'
let g:airline_symbols.linenr = '⭡'
"set encoding=utf-8
set t_Co=256

"--NeoComplCache----------------------------------------------------------------
" Use neocomplcache
let g:neocomplcache_enable_at_startup = 1
" Tab completion!
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Backspace and <C-h> in insert moder closes popup and deletes 1 char back
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"

"--Syntastic--------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_messages = {'level': 'warnings'}

"--BufExplorer------------------------------------------------------------------
nnoremap <leader>be :BufExplorer<CR>

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

"==PHP==========================================================================
autocmd Filetype php setlocal ts=2 sw=2 expandtab

"==PYTHON=======================================================================
au FileType python nnoremap <buffer> <leader>, I#<esc>

"==Go===========================================================================
au FileType go setlocal noexpandtab
":FMT will run go fmt on the current file
":command FMT :!go fmt %

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
" nnoremap <leader>m :!make<cr>
" make clean
" nnoremap <leader>c :!make clean<cr>
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

function! FormatErr()
    silent :%s/#012/\r/g
    silent :%s/^2014/\r2014/g
endfunction

" naively pretty print the current line as json
function! JSONFormat()
    silent :s/, /, \r/g
endfunction

" toggle fold column
function! FoldColumnToggle()
    if &foldcolumn
        setlocal foldcolumn=0
    else
        setlocal foldcolumn=4
    endif
endfunction
"===============================================================================
