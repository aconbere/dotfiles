#export SHELL="/user/local/bin/zsh"
#export ZSH=$HOME/.oh-my-zsh
#export ZSH_THEME="robbyrussell"
#source $ZSH/oh-my-zsh.sh

source "$HOME/Packages/antigen/antigen.zsh"
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle lein
antigen theme robbyrussell
antigen apply

export CFLAGS="-Wall"
export JAVA_HOME=`/usr/libexec/java_home`

PATH="$HOME/bin:$HOME/bin/maven/apache-maven-3.1.1/bin:$HOME/bin/sbt/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:$HOME/bin/play-2.2.2:$HOME/.rbenv/bin:/usr/local/heroku/bin:$HOME/Upworthy/plot/bin:$PATH"

export EDITOR="vim"
export PYTHONDONTWRITEBYTECODE=true
export GOPATH="$HOME/go"

alias profile="vim ~/.zshrc"
alias update="source ~/.zshrc"
alias screen="screen -U"
alias tmux="TERM=screen-256color-bce tmux -u -2"
alias be="bundle exec"
alias tl="tmux list-sessions"
alias ta="tmux attach-session -t"
alias tn="tmux new-session -n"
alias tm="tmux"

alias rstart="bundle install && foreman start"
alias rtest="bundle install && bundle exec rake spec"
alias rtestjs="bundle install && bundle exec rake spec:javascript"

setopt no_share_history
setopt no_correct
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt extended_history
setopt bang_hist
unsetopt correct_all

__git_files () {
  _wanted files expl 'local files' _files
}

source "$HOME/.aws.keys.sh"
source "$HOME/.heroku.keys.sh"

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

eval "$(rbenv init -)"
