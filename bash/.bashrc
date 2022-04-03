# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#Enable autocd
shopt -s autocd

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

#if [ "$color_prompt" = yes ]; then
  #  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\h: \[\033[00m\]\[\033[01;31m\]-> \[\033[01;34m\]\w\[\033[00m\] \u\$ '

#else
 #   PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi


bash_prompt() {
    local NONE="\[\033[0m\]"    # unsets color to term's fg color
    
    # regular colors
    local BLACK="\[\e[0;30m\]"      # black
    local RED="\[\e[0;31m\]"        # red
    local GREEN="\[\e[0;32m\]"      # green
    local YELLOW="\[\e[0;33m\]"     # yellow
    local BLUE="\[\e[0;34m\]"       # blue
    local MAGENTA="\[\e[0;35m\]"    # magenta
    local CYAN="\[\e[0;36m\]"       # cyan
    local WHITE="\[\e[0;37m\]"      # white
    
    # emphasized (bolded) colors
    local EMBLACK="\[\e[1;30m\]"
    local EMRED="\[\e[1;31m\]"
    local EMGREEN="\[\e[1;32m\]"
    local EMYELLOW="\[\e[1;33m\]"
    local EMBLUE="\[\e[1;34m\]"
    local EMMAGENTA="\[\e[1;35m\]"
    local EMCYAN="\[\e[1;36m\]"
    local EMWHITE="\[\e[1;37m\]"
    
    # background colors
    local BGBLACK="\[\e[40m\]"
    local BGRED="\[\e[7;41m\]"
    local BGGREEN="\[\e[42m\]"
    local BGYELLOW="\[\e[43m\]"
    local BGBLUE="\[\e[44m\]"
    local BGMAGENTA="\[\e[45m\]"
    local BGCYAN="\[\e[46m\]"
    local BGWHITE="\[\e[47m\]"

    local UC=$GREEN                # user's color
   if [ $UID -eq "0" ]; then
       UC=$RED   # root's color
       cd
   fi
   if [ $(lsb_release -is) == "Debian" ]; then
       PS1="${UC} \u${BLUE} [\w]"
       PS1+="\n${UC} ➜ ${WHITE}"
   else

    PS1="${UC} \u${BLUE} [\w] "
    PS1+="\n${UC} ➜ ${WHITE}"
   
   fi
# without colors: PS1="[\u@\h \${NEW_PWD}]\\$ "
    # extra backslash in front of \$ to make bash colorize the prompt
}
# init it by setting PROMPT_COMMAND
bash_prompt
unset bash_prompt



# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'



# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi


#set -o vi
bind 'set completion-ignore-case on'

export EDITOR=nvim




NPM_PACKAGES=/home/mohamed/.npm/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
source "$HOME/.cargo/env"
