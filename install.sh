#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
dotDir=~/dotfiles/dotfiles # dotfiles directory

tmuxifierLayouts=~/dotfiles/tmuxifier-layouts
tmuxifierDir=~/.tmuxifier/layouts

preztoDots=~/dotfiles/prezto-runcoms
preztoPath=~/.zprezto/runcoms

##########

# for file in `find $dotdir -type f -printf '%f\n' `
# do
#   ln -s $dotDir/$file ~/.$file
# done


# for file in `find $tmuxifierLayouts -type f -printf '%f\n' `
# do
#   ln -s $tmuxifierLayouts/$file $tmuxifierDir/$file
#   echo Creando link en: $tmuxifierDir/$file
# done

mkdir $preztoPath/backup
mv $preztoPath/* $preztoPath/backup

for file in `find $preztoDots -type f -printf '%f\n' `
do
  ln -s $preztoDots/$file $preztoPath/$file
  echo Creando link en: $preztoPath/$file
done