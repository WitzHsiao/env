#!/usr/bin/env bash

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
