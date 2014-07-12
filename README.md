dotfiles
========

Personal dotfiles, for zsh, bash, and vim.

To install:

Clone the dotfiles directory where you'd like to have uh, dotfiles. i.e ~/

Install oh-my-zsh:

> curl -L http://install.ohmyz.sh | sh

Inside dotfiles, execute the ./makeSymlinks.sh

Install Vundle:

> git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Install Plugins with Vundle: (In vim):

> :PluginInstall

Make sure you terminal is set to 256 colors (I keep forgetting this :P)

iTerm2:

> Profiles -> Terminal -> Report Terminal Type -> xterm-256color
