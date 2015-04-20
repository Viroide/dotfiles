#!/bin/bash


#############################
# DONT USE!
#
# next thing in the TODO: Fix this CRAP! 
#############################










############################
# install.sh
# tries to put dotfiles in their place
############################

########## Variables
dotDir=~/dotfiles/dotfiles # dotfiles directory

tmuxifierLayouts=~/dotfiles/tmuxifier-layouts
tmuxifierDir=~/.tmuxifier/layouts

preztoDots=~/dotfiles/prezto-runcoms
preztoPath=~/.zprezto/runcoms

##########

#make links to dotfiles in your home:
for file in `find $dotdir -type f -printf '%f\n' `
do
  ln -s $dotDir/$file ~/.$file
  echo Creando link en: .$file
done

#make links to tmuxifier layouts
for file in `find $tmuxifierLayouts -type f -printf '%f\n' `
do
  ln -s $tmuxifierLayouts/$file $tmuxifierDir/$file
  echo Creando link en: $tmuxifierDir/$file
done

# backup your prezto config
mkdir $preztoPath/backup
mv $preztoPath/* $preztoPath/backup

#make links to prezto dotfiles 
for file in `find $preztoDots -type f -printf '%f\n' `
do
  ln -s $preztoDots/$file $preztoPath/$file
  echo Creando link en: $preztoPath/$file
done