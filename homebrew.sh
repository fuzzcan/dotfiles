#!/bin/bash
sudo apt install zsh -y;
cp "/mnt/c/Users/Chris/Projects/shell/.zshrc" ~
sudo echo "poop"
sudo echo "Created sudo session for non-interactive homebrew install"

github_content_url="https://raw.githubusercontent.com/"
homebrew_url="Homebrew/install/HEAD/"
if [ "$1" = "-i" ] || [ $# -eq 0 ]
then
    sudo apt update -y
    sudo apt upgrade -y
    install="$github_content_url$homebrew_url/install.sh";
    yes "" | NONINERACTIVE=1 /bin/bash -c "$(curl -fsSL $install)";
    (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') \
    >> /home/stone/.zshrc;
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)";
elif [ "$1" = "-u" ]
then
    echo "uninstalling"; 
    NONINERACTIVE=1 uninstall="$github_content_url$homebrew_url/uninstall.sh";
    /bin/bash -c "$(curl -fsSL $uninstall)" </dev/null;
else 
  echo 'Invalid argument. Specify install (--install or -i) or uninstall (--uninstall or -u)'
fi

sudo apt install build-essential -y
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew update && brew upgrade oh-my-posh
oh-my-posh uate
source ~/.zshrc

echo "BOBOO"

zsh;
