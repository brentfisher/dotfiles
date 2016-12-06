# Path to your oh-my-zsh installation.
export ZSH=/Users/brent/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
# DISABLE_LS_COLORS="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
bindkey -v #use VIM mappings for editing commands in ZSH
bindkey '\C-b' history-beginning-search-backward
bindkey '\C-f' history-beginning-search-forward


export REDIS_URL="redis://127.0.0.1"
export TERM=screen-256color #adds 256 color support for tmux. Fixes colors in VIM
set -g default-terminal "screen-256color"

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

#Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='ls -G -p'
