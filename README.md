Repository to keep track of changes to bashrc and vimrc that I would like to have
across all server accounts.

Clone this repository into a directory called dev in the home directory. Then,
for new setups, link the env_setup.py script into the home directory with

ln -s ~/dev/dotfiles/env_setup.py ~/

and run it with python to link all the dotfiles and install pip and
virtualenvwrapper. Afterwords, source the bashrc file and then setup vim.

Vundle.vim is used to manage all the vim plugins, which is added here as a
subtree named "vundle". It is updated with the command

    git subtree pull --prefix=vim/bundle/Vundle.vim --squash vundle master

and any changes to plugins are installed to vim with the command

    vim +PluginInstall +qall

extra building is required for some of them

* command-t
* YouCompleteMe

Similarly, to update any changes to i3, use the command

    git fetch i3 master
    git subtree pull --prefix i3 i3 master --squash

TODO: fix bash and zshrc stuff
