#!/usr/bin/env bash
echo "passed arg: $1";
if [ "$1" = "-i" ] || [ $# -eq 0 ] || [ -z "$1" ]
then
  sudo echo "Installing zsh"
  sudo apt install zsh -y
  cp "$PWD/.zshrc" ~ 
elif [ "$1" = "-u" ]
then
  sudo echo "Uninstalling zsh"
  sudo apt autopurge zsh -y
  rm ~/.zshrc 
else 
  echo 'Invalid argument. Specify install (-i) or uninstall (-u).'
fi
