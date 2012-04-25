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


PATH="$HOME/bin:$HOME/.cabal/bin:$HOME/.gem/ruby/1.8/bin:$HOME/Packages/android/sdk/tools:$HOME/Packages/android/sdk/platform-tools:/$HOME/Packages/java/idea-IC-107.105/bin:$HOME/Packages/java/hadoop/bin:$PATH"
export EDITOR="vim"

keychain ~/.ssh/id_dsa ~/.ssh/id_rsa
. ~/.keychain/$HOST-sh

alias profile="vim ~/.zshrc"
alias update="source ~/.zshrc"
alias screen="screen -U"
alias estately='cd ~/Projects/Estately/estately'
alias ack='ack-grep'
alias narwhal='cd ~/Projects/ofa/narwhal && workon narwhal'
alias wire='cd ~/Projects/ofa/wire'
alias rover='cd ~/Projects/love/rover'

export NODE_PATH=/usr/local/lib/node_modules
export ANDROID_HOME=$HOME/Packages/android/sdk
GOROOT="$HOME/Packages/go"
GOARCH="amd64"
GOOS="linux"

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
