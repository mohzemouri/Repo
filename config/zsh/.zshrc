# PROMPT_SUBST enables functions and variables to re-run everytime the prompt
# is rendered
setopt PROMPT_SUBST

setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

#################################################################

plugins=(zsh-autosuggestions zsh-completions zsh-syntax-highlighting)

autoload -U compinit && compinit


source $ZDOTDIR/.zaliases

for config_file ($ZDOTDIR/lib/*.zsh); do
  source $config_file
done


if [ ! "$ZSH_THEME" = "default"  ]; then
  if [ -f "$ZDOTDIR/themes/$ZSH_THEME.zsh" ]; then
    source "$ZDOTDIR/themes/$ZSH_THEME.zsh"
  fi
else
    source "$ZDOTDIR/themes/default.zsh"
fi

    
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi


for plugin ($plugins); do
  if [ -f $ZDOTDIR/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZDOTDIR/plugins/$plugin/$plugin.plugin.zsh
  else 
    echo "plugin '$plugin' not found" 
  fi
done

# ~/Dotfiles/scripts/fm6000 -c bright_magenta -n -de bspwm -dog
