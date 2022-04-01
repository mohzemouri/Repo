" open NERDTree automatically when vim starts up on opening a directory
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
