# Prefer vi shortcuts
bindkey -v
DEFAULT_VI_MODE=viins
KEYTIMEOUT=1

__set_cursor() {
    local style
    case $1 in
        reset) style=0;; # The terminal emulator's default
        blink-block) style=1;;
        block) style=2;;
        blink-underline) style=3;;
        underline) style=4;;
        blink-vertical-line) style=5;;
        vertical-line) style=6;;
    esac

    [ $style -ge 0 ] && print -n -- "\e[${style} q"
}

# Set your desired cursors here...
__set_vi_mode_cursor() {
    case $KEYMAP in
        vicmd)
          __set_cursor blink-block
          ;;
        main|viins)
          __set_cursor blink-vertical-line
          ;;
    esac
}

__get_vi_mode() {
    local mode
    case $KEYMAP in
        vicmd)
          mode=%{$fg_bold[green]%}[N]
          ;;
        main|viins)
          mode=%{$fg_bold[cyan]%}[I]
          ;;
    esac
    print -n -- $mode
}

zle-keymap-select() {
    __set_vi_mode_cursor
    zle reset-prompt
}

zle-line-init() {
    zle -K $DEFAULT_VI_MODE
}

zle -N zle-line-init
zle -N zle-keymap-select

# Optional: allows you to open the in-progress command inside of $EDITOR
autoload -Uz edit-command-line
bindkey -M vicmd 'v' edit-command-line
zle -N edit-command-line

# Single quotes are important so that function is not run immediately and saved
# in the variable

# PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%} "
PROMPT='$(__get_vi_mode) %{$fg[cyan]%}%c %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}'
RPROMPT=' $(git_prompt_info)'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
