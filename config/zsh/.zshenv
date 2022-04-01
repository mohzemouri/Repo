#####################################################
#This file should only define environment variables.#
#####################################################
export XDG_CONFIG_HOME="$HOME/.config"
#export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
#export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export LANG="en_US.UTF-8"
export EDITOR="nvim"
export VISUAL="nvim"

 
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTCONTROL="ignoreboth"
export HISTSIZE="1000"
export SAVEHIST="1000"


export PATH="/usr/local/bin:/usr/bin:/usr/sbin:/usr/games:$HOME/bin"

export NPM_PACKAGES="$XDG_CONFIG_HOME/npm/npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules"
PATH="$PATH:$NPM_PACKAGES/npm/npm-packages/bin"

export ZSH_THEME="default"

export NVIMDOTDIR="$XDG_CONFIG_HOME/nvim"

export MANPAGER="nvim -c 'set ft=man showtabline=0' -"

source "$HOME/.cargo/env"
