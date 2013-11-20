Repository to keep track of changes to bashrc and vimrc that I would like to have
across all server accounts. The only submodule necessary to update is the vundle
plugin for vim. When cloning this repository, also have to run

    $ git submodule init
    $ git submodule update

Then to install all the bundles, run

    :BundleInstall

in vim and also follow any specific plugin installation steps given in docs.

Just need to get the same directory structure going in my accounts now -
another TODO. May also switch to subtree instead of submodule.
