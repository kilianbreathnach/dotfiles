cd $HOME

# first zsh stuff
if [[ -f ".zshrc" ]]; then
    echo ".zshrc exists, skipping install"
else
    git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

    ln -s $HOME/dev/dotfiles/zsh/zshrc $HOME/.zshrc
    ln -s $HOME/dev/dotfiles/zsh/zshenv $HOME/.zshenv
    ln -s $HOME/dev/dotfiles/bash $HOME/.bash  # for colors
fi

TEST_CURRENT_SHELL=$(basename "$SHELL")
if [ "$TEST_CURRENT_SHELL" != "zsh" ]; then
    chsh -s $(grep /zsh$ /etc/shells | tail -1)
fi

# then python stuff
if [[ -d ".pyenv" ]]; then
    echo ".pyenv exists, skipping install"
else
    if [[ -d "$HOME/dev/pyenv" ]]; then
	echo "pyenv repo exists in ~/dev, linking .pyenv to this"
    else
	git clone https://github.com/pyenv/pyenv.git $HOME/dev/pyenv
    fi

    ln -s $HOME/dev/pyenv $HOME/.pyenv

    # get necessary environment variables
    source $HOME/.zshenv
    source $HOME/.zshrc

    CONFIGURE_OPTS=--enable-shared pyenv install 3.7.4

    # echo "installing pipenv into pyenv global"
    pyenv global 3.7.4
    # pip install pipenv

    # poetry stuff and zsh compatibility
    curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
    source $HOME/.poetry/env
    mkdir $ZSH/plugins/poetry
    poetry completions zsh > $ZSH/plugins/poetry/_poetry

    exec zsh
fi

# finally neovim stuff
if ! type "nvim" > /dev/null; then
    echo "neovim is not installed, cannot set up environment"
else
    if [[ -f ".config/nvim/init.vim" ]]; then
        echo "nvim config exists, skipping setup"
    else
	if ! [[ -d ".config/nvim" ]]; then
	    mkdir -p $HOME/.config/nvim
        fi
        ln -s $HOME/dev/dotfiles/neovim/init $HOME/.config/nvim/init.vim
    fi
fi
