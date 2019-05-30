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
if [[ -f ".pyenv" ]]; then
    echo ".pyenv exists, skipping install"
else
    if [[ -d "$HOME/dev/pyenv" ]]; then
	echo "pyenv repo exists in ~/dev, linking .pyenv to this"
    else
	git clone https://github.com/pyenv/pyenv.git $HOME/dev/pyenv
    fi

    ln -s $HOME/dev/pyenv $HOME/.pyenv
    source $HOME/.zshenv
    source $HOME/.zshrc

    echo "installing python 3.7.3"
    pyenv install 3.7.3

    echo "installing pipenv into pyenv global"
    pyenv global 3.7.3
    pip install pipenv

    exec zsh
fi

# finally vim stuff
if [[ -f ".vimrc" ]]; then
    echo ".vimrc exists, skipping install"
else
fi
 
