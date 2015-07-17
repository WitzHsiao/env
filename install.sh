#!/usr/bin/env bash

ENVHOME=~/env
if [ ! -d "$ENVHOME" ]; then 
    git clone git@github.com:WitzHsiao/env.git "$ENVHOME"
else
    cd "$ENVHOME"
    git pull
fi

ANTIGEN=~/.antigen
if [ ! -d "$ANTIGEN" ]; then 
    git clone https://github.com/zsh-users/antigen.git "$ANTIGEN"
else
    cd "$ANTIGEN"
    git pull
fi

ln -s $ENVHOME/my-bashrc ~/.my-bashrc
sh $ENVHOME/install_zsh.sh
