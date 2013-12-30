# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# App Inventor Something
PATH="/Users/Edwin/appengine-java-sdk-1.8.0/bin:${PATH}"
export PATH

PATH="/Applications/AppInventor/commands-for-appinventor/:${PATH}"
export PATH

alias orangepy='/Applications/Orange.app/Contents/MacOS/python'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

