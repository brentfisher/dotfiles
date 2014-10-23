alias hayley="jp2a hayley.jpg --colors --width=200"
alias nr="repl.history"
alias ls='ls -G -p'
#alias ack='ack -a --ignore-dir={node_modules,test,spec,tmp,coverage}'
#alias ack= 'ag *$ --ignore-dir={node_modules,test,spec,tmp,coverage}'
function fack () {
  ag $@ --ignore-dir={node_modules,test,spec,tmp,coverage,vendor,log}
}
#node-webkit shortcut
alias nw='/Applications/node-webkit.app/Contents/MacOS/node-webkit'
#stop autocorrect on the following commands
alias ssh='nocorrect ssh'
alias rpsec='nocorrect bundle exec rspec'
#alias vim to macvim
alias vim='vi'
alias nyan="nc -v nyancat.dakko.us 23"
alias irc="irssi"

bindkey -v #use VIM mappings for editing commands in ZSH
bindkey '\C-b' history-beginning-search-backward
bindkey '\C-f' history-beginning-search-forward

export NODE_PATH=/usr/local/share/npm/bin
export MONGO_DEV_CONN=mongodb://localhost:27017/inteljs
export MONGO_CONN=mongodb://localhost:27017/inteljs
export TERM=screen-256color #adds 256 color support for tmux. Fixes colors in VIM
export LOCAL_BUNDLE=true
export RUN_MODE=wwwtest
export GOPATH="/usr/local/Cellar/go/1.2.1/src/pkg/code.google.com/p/"
export DOCKER_HOST="tcp://localhost:4243"
export REDIS_URL="redis://127.0.0.1"
export KEYTIMEOUT=1 #quickens time between different modes in VIM

# I drank once
export MONGO_CONN="mongodb://localhost:27017/idrkonce"
export TWITTER_OAUTH_CALLBACK="http://127.0.0.1:3000/auth/twitter/callback"
export SESSION_SECRET=
export TWITTER_CONSUMER_KEY=
export TWITTER_CONSUMER_SECRET=

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="/Users/bfisher/.rvm/gems/ruby-1.9.3-p545/bin:/Users/bfisher/.rvm/gems/ruby-1.9.3-p545@global/bin:/Users/bfisher/.rvm/rubies/ruby-1.9.3-p545/bin:$PATH"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$NODE_PATH

set -g default-terminal "screen-256color"
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
