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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Applications/AppInventor/commands-for-appinventor/:/Users/Edwin/appengine-java-sdk-1.8.0/bin:/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export PATH="/usr/local/bin:$PATH"

# Path for appengine stuff
export PATH="/Users/Edwin/appengine-java-sdk-1.8.0/bin:${PATH}"

# Use opython when executing code that requires orange
alias opython='/Applications/Orange.app/Contents/MacOS/python'

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

activate() {source ~/virtualenv/$*/bin/activate}

# Deploy appinventor to appengine
alias deploy_ai='appcfg.sh -A aitestdesigner update ~/Documents/MIT/UROP/AppInventor/app-inventor-private/appinventor/appengine/build/war'


