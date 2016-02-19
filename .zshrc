#export SHELL="/user/local/bin/zsh"

source "$HOME/Projects/antigen.zsh"
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle lein
antigen theme robbyrussell
antigen apply

export CFLAGS="-Wall"
export JAVA_HOME=`/usr/libexec/java_home`

PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:$HOME/.rbenv/bin:$GOPATH/bin:$PATH"

export EDITOR="nvim"
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
alias vim="nvim"
alias nvc="nvim ~/.config/nvim/init.vim"

alias rstart="rm -rf tmp/cache; npm install; bundle install; be rails server"
alias rtest="rm -rf tmp/cache; npm install; bundle install && bundle exec rake spec"
alias rtestjs="bundle install && bundle exec rake spec:javascript"
alias ct="ctags -R ."
alias smartsync="~/stripe/pay-server/scripts/smartsync/smartsync"

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

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

eval "$(rbenv init -)"
eval "$(direnv hook zsh)"
