#!/usr/bin/env bash

# if using MacOS and coreutils in conda base envirvonment (added from https://github.com/daler/dotfiles/requirements-mac.txt):
Activating a non-base env will prevent dircolors. Temp workaround is below:

conda activate base
conda remove coreutils

# install homebrew
export HOMEBREW_BREW_GIT_REMOTE="..."  # put your Git mirror of Homebrew/brew here
export HOMEBREW_CORE_GIT_REMOTE="..."  # put your Git mirror of Homebrew/homebrew-core here
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# add homebrew to path
if [[ -e ~/.bash_profile ]]
then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
  source ~/.bash_profile
else
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bashrc
  source ~/.bashrc
fi

# install core utils with homebrew
brew install coreutils

# add coreutils bin directory to path
if [[ -e ~/.bash_profile ]]
then
  echo 'PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"' >> ~/.bash_profile
  source ~/.bash_profile
else
echo 'PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"' >> ~/.bashrc
  source ~/.bashrc
fi
