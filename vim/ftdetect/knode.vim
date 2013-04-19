au BufNewFile *.kn setlocal filetype=knode fileencoding=utf-8 fileformat=unix
au BufRead *.kn setlocal filetype=knode fileencoding=utf-8 fileformat=unix

autocmd Filetype knode setlocal ts=2 sw=2 expandtab
