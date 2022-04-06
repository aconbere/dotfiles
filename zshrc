HISTFILE=~/.zsh_history
SAVEHIST=100000
HISTSIZE=100000
GOPATH="$HOME/go"

export CFLAGS="-Wall"
export EDITOR="nvim"
export PYTHONDONTWRITEBYTECODE=true
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

PATH="$HOME/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:$PATH"
PATH="$HOME/Packages/wla-dx/binaries:$PATH"
PATH="$HOME/Packages/avr8-gnu-toolchain-linux_x86_64/bin:$PATH"
PATH="$HOME/Packages/go1.16.3/bin:$PATH"
#PATH="$HOME/Packages/zig/zig-macos-x86_64-0.9.0-dev.2025+ecf0050a9:$PATH"
PATH="$HOME/Packages/zig/zls/zig-out/bin:$PATH"
PATH="$GOPATH/bin:$PATH"

alias update="source ~/.zshrc"
alias screen="screen -U"
alias tmux="tmux -u -2"
alias vim="nvim"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias profile="nvim ~/.zshrc"
alias blog="cd ~/Projects/blog"
alias blog-compose="blog; be jekyll compose"
alias ls="exa -l"

bindkey -e
autoload -Uz compinit promptinit up-line-or-beginning-search down-line-or-beginning-search vcs_info
promptinit
compinit

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

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


export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

eval "$(starship init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fnm env --use-on-cd)"
