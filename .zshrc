# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="aconbere"
export CFLAGS="-Wall"
export JAVA_HOME=/usr/lib/jvm/java-6-sun

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

PATH="$HOME/bin:$HOME/.cabal/bin:$HOME/Packages/android/sdk/tools:$HOME/Packages/android/sdk/platform-tools:$PATH"

export EDITOR="vim"
export PYTHONDONTWRITEBYTECODE=true

keychain ~/.ssh/id_dsa ~/.ssh/id_rsa
. ~/.keychain/$HOST-sh

alias profile="vim ~/.zshrc"
alias update="source ~/.zshrc"
alias screen="screen -U"
alias ack='ack-grep'
alias narwhal='cd ~/Projects/ofa/narwhal && workon narwhal'
alias archspace='cd ~/Projects/scala/archspace'

export NODE_PATH=/usr/local/lib/node_modules
export ANDROID_HOME=$HOME/Packages/android/sdk
GOROOT="$HOME/Packages/go"
GOARCH="amd64"
GOOS="linux"

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/vert_wrapper

setopt no_share_history
setopt no_correct
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt extended_history
setopt bang_hist
#setopt vi
