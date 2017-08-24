HISTFILE=~/.zsh_history
SAVEHIST=100000
HISTSIZE=100000

export CFLAGS="-Wall"
export JAVA_HOME=`/usr/libexec/java_home`

export EDITOR="nvim"
export PYTHONDONTWRITEBYTECODE=true
export GOPATH="$HOME/go"

PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:$HOME/.rbenv/bin:$GOPATH/bin:$PATH"

alias profile="vim ~/.zshrc"
alias update="source ~/.zshrc"
alias screen="screen -U"
alias tmux="TERM=screen-256color-bce tmux -u -2"
alias tl="tmux list-sessions"
alias ta="tmux attach-session -t"
alias tn="tmux new-session -n"
alias tm="tmux"
alias vim="nvim"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias rstart="rm -rf tmp/cache; npm install; bundle install; be rails server"
alias rtest="rm -rf tmp/cache; npm install; bundle install && bundle exec rake spec"
alias rtestjs="bundle install && bundle exec rake spec:javascript"
alias ct="ctags -R ."
alias smartsync="~/stripe/pay-server/scripts/smartsync/smartsync"

bindkey -e
autoload -Uz compinit promptinit up-line-or-beginning-search down-line-or-beginning-search vcs_info
promptinit
compinit
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '!'
zstyle ':vcs_info:*' unstagedstr '?'
zstyle ':vcs_info:*' formats '[%b]%c%F{red}%u%F{white}'

precmd() {
    vcs_info
}

unsetopt correct_all
setopt prompt_subst
setopt append_history
setopt no_correct
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt inc_append_history share_history
setopt extended_history
setopt bang_hist

PROMPT='%F{red}<%F{green}%n%F{white}:%F{yellow}%~%F{red}>%F{white}%b
${vcs_info_msg_0_}%f%B %#%b '

__git_files () {
  _wanted files expl 'local files' _files
}

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

eval "$(rbenv init -)"
eval "$(direnv hook zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
