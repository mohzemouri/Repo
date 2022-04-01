let g:startify_custom_header = [
            \ '     _   __         _    ___         ',
            \ '    / | / /__  ____| |  / (_)___ ___ ',
            \ '   /  |/ / _ \/ __ \ | / / / __ `__ \',
            \ '  / /|  /  __/ /_/ / |/ / / / / / / /',
            \ ' /_/ |_/\___/\____/|___/_/_/ /_/ /_/ ',
            \]

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'b': '~/.bashrc' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.config/zsh/.zshrc' },
            \ { 'p': '~/Dev/public'},
            \ ]


