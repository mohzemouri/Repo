" Better nav for omnicomplete
inoremap <expr> <C-j> ("\<C-n>")
inoremap <expr> <C-k> ("\<C-p>")

" I hate escape more than anything else
inoremap ii <Esc>
inoremap <Leader>i <Esc>O

" Copy and past to system clipboard
vnoremap <Leader>y "*y
vnoremap <Leader>p "*p

" Easy CAPS
inoremap <C-u> <ESC>viwUi
nnoremap <C-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>

" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Add window splits
noremap <Leader>v :vspl<CR>
noremap <Leader>h :spl<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Change split windows frome horizontal to vertical
nnoremap <Leader>th <C-w>t<C-w>H
nnoremap <Leader>tk <C-w>t<C-w>K

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>
nnoremap <M-=>    <C-W>=

" Add line (after or before) in insert mode
inoremap <Leader>o <Esc>o
inoremap <Leader>O <Esc>O
nnoremap <Leader>o <Esc>o<ESC>
nnoremap <Leader>O <Esc>O<ESC>

" Make it easy to edit init.vim
noremap <Leader>ev :e $MYVIMRC<cr>
noremap <Leader>ed :e 
 
" Toggle NERDTree
noremap <Leader>n :NERDTreeToggle<cr>
inoremap <Leader>n <Esc>:NERDTreeToggle<cr>

" Enter terminal in nvim
noremap <Leader>tt :spl term://zsh<cr>
tnoremap <ESC> <C-\><C-N>

" Comment lines
nnoremap <Leader>c :Commentary<CR>
vnoremap <Leader>c :Commentary<CR>

" Move line up and down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" startify sessions
noremap <Leader>sl :SLoad
noremap <Leader>ss :SSave
noremap <Leader>sd :SDelete
noremap <Leader>sc :SClose

