# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nanotech"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:$PATH"

# Open macvim instead of default vim
alias vim='mvim -v'

# Connect to MIT's athena
alias athena='ssh ehzhang@athena.dialup.mit.edu'

export PATH="/Library/Ruby/Gems/2.0.0:${PATH}"

# Use powerline for zsh
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Clear the screen
alias c='clear'

# Deploy birthday principle
alias deploy_birthday='scp -r ~/birthday_principle/. ehzhang@athena.dialup.mit.edu:/mit/ehzhang/www/birthday_principle'

# Deploy the current folder to a folder in athena
deploy_athena() {scp -r . ehzhang@athena.dialup.mit.edu:/mit/ehzhang/$* ;}

alias activate='source venv/bin/activate'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

clone() {git clone git@github.com:ehzhang/$*.git}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH=$PATH:~/eb/linux/python2.7

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias chrome='open -a "Google Chrome"'

alias startPostgres='postgres -D /usr/local/var/postgres'

alias ios='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app'
