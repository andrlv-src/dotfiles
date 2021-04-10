#!/bin/bash
### Installation script
### ver 0.1-alpha

# variables
vim=.vim
gitconfig=.gitconfig
zsh=.zsh
zshrc=.zshrc

# installing .vim/vimrc file 
if [ -d "$HOME/$vim" ]
then
        echo "$HOME/$vim directory already exists."
        echo "Creating vimrc file backup..."
        cp $HOME/$vim/vimrc $HOME/$vim/vimrc.old

        echo "Creating vimrc file in $HOME/$vim ..."
        ln -f $vim/vimrc $HOME/$vim/vimrc
else
        echo "Creating directory..."
        mkdir $HOME/$vim

        echo "Creating vimrc file in $HOME/$vim ..."
        ln $vim/vimrc $HOME/$vim/vimrc
fi        

# installing .zsh files 
if [ -d "$HOME/$zsh" ]
then
        echo "$HOME/$zsh directory already exists."
        echo "Creating aliases file backup..."
        cp $HOME/$zsh/aliases $HOME/$zsh/aliases.old

        echo "Creating aliases file in $HOME/$zsh ..."
        ln -f $zsh/aliases $HOME/$zsh/aliases
else
        echo "Creating .zsh directory..."
        mkdir $HOME/$zsh

        echo "Creating aliases file in $HOME/$zsh ..."
        ln $zsh/aliases $HOME/$zsh/aliases
fi 

# installing .zshrc file
if [ -f "$HOME/$zshrc" ]
then
        echo "$HOME/$zshrc file already exists."
        echo "Creating .zshrc file backup..."
        cp $HOME/$zshrc $HOME/$zshrc.old
        echo "Creating .zshrc file..."
        ln -f $zshrc $HOME/$zshrc
else
        echo "Creating .zshrc file..."
        ln $zshrc $HOME/$zshrc
fi

# installing .gitconfig file
if [ -f "$HOME/$gitconfig" ]
then
        echo "$HOME/$gitconfig file already exists."
        echo "Creating .gitconfig file backup..."
        cp $HOME/$gitconfig $HOME/$gitconfig.old
        echo "Creating .gitconfig file..."
        ln -f $gitconfig $HOME/$gitconfig
else
        echo "Creating .gitconfig file..."
        ln $gitconfig $HOME/$gitconfig
fi

