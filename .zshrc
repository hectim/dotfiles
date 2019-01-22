#default tmux load
# [[ $TERM != "screen" ]] && exec tmux
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# sets up z for fasd
eval "$(fasd --init posix-alias zsh-hook)"
# autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'

# homebrew install thefuck
eval $(thefuck --alias)

#bazel to path
# export PATH=/usr/local/lib:/usr/local/lib/node_modules:/usr/local/sbin:/usr/local/bin/sh:$PATH
# go to path
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$HOME/bin:/usr/local/opt/node@8/bin:/usr/local/bin:/usr/local/lib/node_modules:/usr/local/bin/sh:/usr/local/lib:/usr/local/sbin:/usr/local/lib/node_modules:$GOBIN:$PATH
# node from brew
# export PATH=/usr/local/opt/node@8/bin:$PATH
# protoc to path
export LD_LIBRARY_PATH=/usr/local/lib
# create chrome alias
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
# gcloud to path
# source /Users/colton/google-cloud-sdk/path.zsh.inc
# gcloud zsh completiton

# autoload -U compinit compdef
# compinit
# autoload -Uz promptinit
# promptinit

# source /Users/colton/google-cloud-sdk/completion.zsh.inc

# add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)

# protoc to path
export LD_LIBRARY_PATH=/usr/local/lib

# stop typing cd
setopt AUTO_CD
# Now we can pipe to multiple outputs!
setopt MULTIOS
# This makes cd=pushd
setopt AUTO_PUSHD
# This will use named dirs when possible
setopt AUTO_NAME_DIRS
# If we have a glob this will expand it
setopt GLOB_COMPLETE
setopt PUSHD_MINUS
# ignore multiple directories for the stack
setopt PUSHD_IGNORE_DUPS
# If I could disable Ctrl-s completely I would!
setopt NO_FLOW_CONTROL
# Keep echo "station" > station from clobbering station
setopt NO_CLOBBER
# Case insensitive globbing
setopt NO_CASE_GLOB
# Be Reasonable!
setopt NUMERIC_GLOB_SORT
# I don't know why I never set this before.
setopt EXTENDED_GLOB

# stop retrying commands
unsetopt correct_all
unsetopt CORRECT

# Incremental search is elite!
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward

# Search based on what you typed in already
bindkey -M vicmd "//" history-beginning-search-backward
bindkey -M vicmd "??" history-beginning-search-forward

# oh wow!  This is killer...  try it!
bindkey -M vicmd "q" push-line

# it's like, space AND completion.  Gnarlbot.
bindkey -M viins ' ' magic-space

# ctry f to accept autosuggest. use autosuggest-execute to accept and execute in one command
bindkey 'kk' autosuggest-accept
bindkey 'jj' autosuggest-execute
bindkey 'hh' forward-word

alias gitp='git'            # seriously this is insane
alias gi='git'              # seriously this is insane
alias lsd='ls -a'           # because I mistype this all the time
alias v='f -e vim'          # nice filesystem search to open vim
alias rm='rm -f'            # when I hit return, I expect a response not a question
alias count='ls -l | wc -l' # count how many ls entries are returned
alias start='npm start'     # common usecase

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bready/Documents/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/bready/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bready/Documents/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/bready/Documents/google-cloud-sdk/completion.zsh.inc'; fi
