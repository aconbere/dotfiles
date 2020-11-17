HISTFILE=~/.zsh_history
SAVEHIST=100000
HISTSIZE=100000

export CFLAGS="-Wall"
export EDITOR="nvim"
export PYTHONDONTWRITEBYTECODE=true
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:$PATH"
PATH="$GOPATH/bin:$PATH"
PATH="$HOME/Packages/wla-dx/binaries:$PATH"

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
alias ct="ctags -R ."

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
setopt no_correct
setopt append_history
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
