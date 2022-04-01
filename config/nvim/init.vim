"     _   __         _    ___              _____      __  __  _                 
"    / | / /__  ____| |  / (_)___ ___     / ___/___  / /_/ /_(_)___  ____ ______
"   /  |/ / _ \/ __ \ | / / / __ `__ \    \__ \/ _ \/ __/ __/ / __ \/ __ `/ ___/
"  / /|  /  __/ /_/ / |/ / / / / / / /   ___/ /  __/ /_/ /_/ / / / / /_/ (__  ) 
" /_/ |_/\___/\____/|___/_/_/ /_/ /_/   /____/\___/\__/\__/_/_/ /_/\__, /____/  
"                                                                 /____/        
" =============================================================================
" Filename:    init.vim
" Github:      https://github.com/mohzemouri/dotfiles
" Maintainer:  Zemouri Mohamed


source $NVIMDOTDIR/config/plugins.vim

source $NVIMDOTDIR/config/general.vim

source $NVIMDOTDIR/config/mappings.vim

source $NVIMDOTDIR/config/themes/colorscheme.vim

source $NVIMDOTDIR/config/themes/airline.vim

source $NVIMDOTDIR/config/coc.vim

source $NVIMDOTDIR/config/nerdtree.vim

source $NVIMDOTDIR/config/rainbow.vim

source $NVIMDOTDIR/config/startify-conf.vim

" Section Folding{{{
set foldenable
set foldmethod=syntax
set foldlevelstart=10
set foldnestmax=10
"}}}

" vim:foldmethod=marker:foldlevel=0
