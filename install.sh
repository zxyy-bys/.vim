#!/bin/bash

DATE=`date +%Y-%m-%d:%H:%M:%S`
echo $DATE
if [ -e $HOME/.vimrc ] #&& [  -L $HOME/.vimrc ]  
then
    echo "File $HOME/.vimrc exists, backup $HOME/.vimrc to $HOME/.vimrc_$DATE"
fi

if [ -e $HOME/.vim ]
then
    echo "Direcotry $HOME/.vim exists, backup $HOME/.vim to $HOME/.vim_$DATE"
fi

