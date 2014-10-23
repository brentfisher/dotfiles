# Path to your oh-my-zsh configuration.
# ZSH=$HOME/.oh-my-zsh

# This RVM nonsense totally doesn't work in ZSH, adding rvm ruby to my path later
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="agnoster"
# ZSH_THEME="arrow"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias hayley="jp2a hayley.jpg --colors --width=200"
alias nr="repl.history"
alias ls='ls -G -p'
# alias ack='ack -a --ignore-dir={node_modules,test,spec,tmp,coverage}'
#alias ack= 'ag *$ --ignore-dir={node_modules,test,spec,tmp,coverage}'
function fack () {
  ag $@ --ignore-dir={node_modules,test,spec,tmp,coverage,vendor,log}
}
alias nw='/Applications/node-webkit.app/Contents/MacOS/node-webkit'
# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(zsh-syntax-highlighting)
# 
# source $ZSH/oh-my-zsh.sh
# 
bindkey -v #use VIM mappings for editing commands in ZSH
bindkey '\C-b' history-beginning-search-backward
bindkey '\C-f' history-beginning-search-forward
# 
# #stop autocorrect on the following commands
alias ssh='nocorrect ssh'
alias rpsec='nocorrect bundle exec rspec'

#alias vim to macvim
alias vim='vi'

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export NODE_PATH=/usr/local/share/npm/bin
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$NODE_PATH
#unsetopt correct
alias agsh='ssh -F ~/.ag/SilverLining.conf'
alias agcp='scp -F ~/.ag/SilverLining.conf'
export MONGO_DEV_CONN=mongodb://localhost:27017/inteljs
export MONGO_CONN=mongodb://localhost:27017/inteljs
export INTELJS_DEV_KEY=
export CB_MOBILE_DEV_KEY=
export AWS_DEVTOOLS_INTELJS=
export AWS_DEVTOOLS_INTELJS_SECRET=
export TERM=screen-256color #adds 256 color support for tmux. Fixes colors in VIM
export PATH="/Users/bfisher/.rvm/gems/ruby-1.9.3-p545/bin:/Users/bfisher/.rvm/gems/ruby-1.9.3-p545@global/bin:/Users/bfisher/.rvm/rubies/ruby-1.9.3-p545/bin:$PATH"
export LOCAL_BUNDLE=true
export CB_MOBILE_DEV_KEY=
export SECRET_KEY_BASE=
export RUN_MODE=wwwtest
export GOPATH="/usr/local/Cellar/go/1.2.1/src/pkg/code.google.com/p/"
export DOCKER_HOST="tcp://localhost:4243"
export OAUTH_CONSUMER_CLIENT_ID=
export OAUTH_CONSUMER_SHARED_SECRET=
export NICHE_GA_ACCOUNT_MBOX=
export NICHE_GA_ACCOUNT_PWD=
export MINGLE_CREDS=
export BING_DEV_KEY=
export REDIS_URL="redis://127.0.0.1"
export KEYTIMEOUT=1 #quickens time between different modes in VIM

# I drank once
export MONGO_CONN="mongodb://localhost:27017/idrkonce"
export TWITTER_OAUTH_CALLBACK="http://127.0.0.1:3000/auth/twitter/callback"
export SESSION_SECRET=
export TWITTER_CONSUMER_KEY=
export TWITTER_CONSUMER_SECRET=
#
set -g default-terminal "screen-256color"
alias nyan="nc -v nyancat.dakko.us 23"
alias irc="irssi"
# alias node='env NODE_NO_READLINE=1 rlwrap node'

# function node () {
#   echo "using debug mode"
#   if [[ $1 == "debug" ]]; then
#     echo "using debug mode"
#     node $@
#   else
#     echo "using rlwrap  mode"
#     env NODE_NO_READLINE=1 rlwrap node $@
#   fi
# }
# 
jp2a /Users/bfisher/apple.jpg  --colors --width=35 --height=20 --background=light

source ~/zshuery/zshuery.sh
load_defaults
load_aliases
load_lol_aliases
load_correction
# alias ls="ls --color=auto"
# export LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:"
# load_completion ${HOME}/.zshuery/completion
load_completion ~/zshuery/completion

prompts '%{$fg_bold[green]%}$(COLLAPSED_DIR)%{$reset_color%} %{$fg[yellow]%}%{$reset_color%} ' #'%{$fg[red]%}$(ruby_version)%{$reset_color%}'
