
" ------------------------------------------ General Settings -----------------------------------------------------

" set leader key
let mapleader = ','

filetype plugin indent on
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8
set number relativenumber
set noswapfile
set backspace=indent,eol,start
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set smartcase
set undodir=$HOME/.config/nvim/undodir
set undofile
set colorcolumn=80

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set expandtab
set autoindent
set fileformat=unix
set scrolloff=10

set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
" set autochdir                           " Your working directory will always be the same as your working directory

" set foldmethod=indent   
" set foldnestmax=10
" set nofoldenable
" set foldlevel=2

" disable netrw plugin
let loaded_netrwPlugin = 1

let g:indentLine_char = '|'

let g:Hexokinase_highlighters = ['backgroundfull']
let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]


" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
