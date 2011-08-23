# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="aconbere"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
GOROOT="$HOME/Packages/go"
GOARCH="amd64"
GOOS="linux"

PATH="$HOME/bin:$HOME/.cabal/bin:$HOME/.gem/ruby/1.8/bin:$HOME/Packages/android/sdk/tools:$HOME/Packages/android/sdk/platform-tools:/$HOME/Packages/java/idea-IC-107.105/bin:$PATH"
export EDITOR="vim"

keychain ~/.ssh/id_dsa ~/.ssh/id_rsa
. ~/.keychain/$HOST-sh

alias profile="vim ~/.zshrc"
alias update="source ~/.zshrc"
alias screen="screen -U"
alias estately='cd ~/Projects/Estately/estately'
alias be='bundle exec'
alias ss='be unicorn_rails'
alias gem='gem1.8'

export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=500000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000

export NODE_PATH=/usr/local/lib/node_modules
export ANDROID_HOME=$HOME/Packages/android/sdk
#export JDK_HOME=/usr/local/lib/jvm/java-6-sun
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
