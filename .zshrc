ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export CFLAGS="-Wall"
export LANGUAGE="en_US.UTF-8"
export JAVA_HOME=/usr/lib/jvm/java-6-sun

PATH="$HOME/bin:$HOME/bin/heroku-client/bin:$HOME/.rbenv/bin:$HOME/.gem/ruby/2.0.0/bin:$PATH"

export EDITOR="vim"
export PYTHONDONTWRITEBYTECODE=true
export HISTFILE=$HOME/.zsh_histry
export HISTSIZE=10000
export SAVEHIST=10000

keychain ~/.ssh/id_rsa
. ~/.keychain/$HOST-sh

alias profile="vim ~/.zshrc"
alias update="source ~/.zshrc"
alias tl="tmux list-sessions"
alias tn="tmux new-session"
alias ta="tmux attach-session -t"
alias tm="tmux"

setopt append_history
setopt no_share_history
setopt no_correct
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt extended_history
setopt bang_hist
# setopt vi
unsetopt correct_all

bindkey -e

source ~/.aws.keys.sh
eval "$(rbenv init -)"
