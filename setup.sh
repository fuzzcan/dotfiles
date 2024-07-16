#!/usr/bin/env bash
CURRENT_DIRECTORY=$PWD
DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$DIR" || exit
. zsh.sh "$1" 

source ~/.zshrc
echo "BOBOO"
zsh;
cd "$CURRENT_DIRECTORY" || exit
