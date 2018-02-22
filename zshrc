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
#bazel to path
export PATH=$HOME/bin:/usr/local/bin:$PATH
# vscode to path
export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/:$PATH
# go to path
export GOPATH=~/Documents/go
export GOBIN=$GOPATH/bin:$GOBIN
export PATH=/usr/local/go/bin:$GOBIN:$PATH
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

## create chrome alias
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"