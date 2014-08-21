Repository to keep track of changes to bashrc and vimrc that I would like to have
across all server accounts.

Vundle.vim is used to manage all the vim plugins, which is added here as a subtree named "vundle". It is updated with the command

    git subtree pull --prefix=vim/bundle/Vundle.vim --squash vundle master

and any changes to plugins are installed to vim with the command

    vim +PluginInstall +qall

extra building is required for some of them

* command-t
* YouCompleteMe


TODO: bash configuration needs to be cleaned up a bit but this is more of an issue with my filesystem organisation.
