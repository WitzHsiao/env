#!/usr/bin/env bash

ANTIGEN=~/.antigen
if [ ! -d "$ANTIGEN" ]; then 
    git clone https://github.com/zsh-users/antigen.git "$ANTIGEN"
else
    cd "$ANTIGEN"
    git pull
fi

ZSHHOME=~/.oh-my-zsh
if [ ! -d "$ZSHHOME" ]; then 
    git clone git://github.com/robbyrussell/oh-my-zsh.git "$ZSHHOME"
else
    cd "$ZSHHOME"
    git pull
fi
cp $ZSHHOME/templates/zshrc.zsh-template ~/.zshrc
echo 'source ~/.my-bashrc' >> ~/.zshrc
chsh -s /bin/zsh
