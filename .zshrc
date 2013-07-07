export CFLAGS="-Wall"
export JAVA_HOME=/usr/lib/jvm/java-6-sun

PATH="$HOME/bin:$PATH"

export EDITOR="vim"
export PYTHONDONTWRITEBYTECODE=true

keychain ~/.ssh/id_rsa
. ~/.keychain/$HOST-sh

alias profile="vim ~/.zshrc"
alias update="source ~/.zshrc"
alias screen="screen -U"
alias tmux="screen -u -2"

setopt no_share_history
setopt no_correct
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt extended_history
setopt bang_hist
# setopt vi
unsetopt correct_all
