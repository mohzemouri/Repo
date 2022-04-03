# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


alias tt='gio trash'
alias lst='gio list trash://'
alias ft='gio trash --force'
alias et='gio trash --empty'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# lsd aliases
alias ls='lsd'
alias ll='lsd -alF'
alias la='lsd -A'
alias lt='lsd --tree'


alias mv='mv -i'
alias rm='rm -i'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'





# apache aliases
alias apache-start='sudo systemctl start apache2'
alias apache-stop='sudo systemctl stop apache2'
alias apache-status='sudo systemctl status apache2'
# apt aliases
alias apt-install='sudo apt install'
alias apt-remove='sudo apt remove'
alias apt-autoremove='sudo apt autoremove'
alias apt-autoclean='sudo apt autoclean'
alias apt-update='sudo apt update'
alias apt-upgrade='sudo apt upgrade'
alias list-upgrade='apt list --upgradable'
alias list-installed='apt list --installed'
# neovim aliases
alias nv='nvim'
