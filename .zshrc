export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="aconbere"
export CFLAGS="-Wall"
export JAVA_HOME=/usr/lib/jvm/java-6-sun

plugins=(git)

source $ZSH/oh-my-zsh.sh

PATH="$HOME/bin:$PATH"

export EDITOR="vim"
export PYTHONDONTWRITEBYTECODE=true

alias profile="vim ~/.zshrc"
alias update="source ~/.zshrc"
alias screen="screen -U"
alias ack='ack-grep'

setopt no_share_history
setopt no_correct
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt extended_history
setopt bang_hist
unsetopt correct_all
