export NAMESPACE=brady-killeen
#default tmux load
# [[ $TERM != "screen" ]] && exec tmux
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# sets up z for fasd
eval "$(fasd --init posix-alias zsh-hook)"
# autosuggestions
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'

# homebrew install thefuck
eval $(thefuck --alias --enable-experimental-instant-mode)

# go to path
export GOPATH=$HOME/go
export MODPATH=$HOME/gomod
export GOBIN=$GOPATH/bin
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$HOME/bin:/usr/local/bin:/usr/local/lib/node_modules:/usr/local/bin/sh:/usr/local/lib:/usr/local/sbin:/usr/local/lib/node_modules:$GOBIN:~/.please:/usr/local/opt:$GOPATH/bin:$GOROOT/bin:$PATH

# protoc to path
export LD_LIBRARY_PATH=/usr/local/lib
# create chrome alias
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

#please
export PATH=$HOME/.please/:$PATH
# source <(plz --completion_script)

# add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)   # intel osx
fpath=("/opt/homebrew/bin" $fpath) # arm osx

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

alias ls='ls --color'       # zsh to show directoires differently
alias lsd='ls -a'           # because I mistype this all the time
alias v='f -e vim'          # nice filesystem search to open vim
alias rm='rm -f'            # when I hit return, I expect a response not a question
alias count='ls -l | wc -l' # count how many ls entries are returned
alias start='npm start'     # common usecase
alias skunkdb='kubectl exec -n default admin-0 -it -- psql -h skunkdb -U skunk -W skunk'
alias matrixdb='kubectl exec -n default admin-0 -it -- psql -h matrix-db -d omni -U omni'
alias 303db='kubectl exec -n default admin-0 -it -- psql -h matrix-db -d room303 -U room303'
alias deliverydb='kubectl exec -n default admin-0 -it -- psql -h matrix-db -d delivery -U delivery'
alias notifydb='kubectl exec -n default admin-0 -it -- psql -h matrix-db -d notify -U notify'
alias newsroomdb='kubectl exec -n default admin-0 -it -- psql -h matrix-db -d newsroom -U newsroom'
alias devclone='~/documents/devclone/devclone'
alias c='cursor'
# for anthony
# alias "='osascript -e '\''tell app "System Events" to display dialog "For real dude" with title "Anthony GTFO"'\'''

export USE_GKE_GCLOUD_AUTH_PLUGIN=True


# code servers
# ssh c.sgu

alias gitp=git       # seriously this is insane
alias gi=git         # seriously this is insane

# Created by `pipx` on 2024-03-14 17:59:54
export PATH="$PATH:/Users/brady.killeen/.local/bin"
# source ~/.tcnrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/brady.killeen/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/brady.killeen/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/brady.killeen/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/brady.killeen/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# got sick of trying to modify zprezto with the unwieldy prompt modifications
# so I just wrote my own imple on that gets the job done
# theme required or looks like shit sadly
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%2/%f %F{red}${vcs_info_msg_0_}%f$ '
