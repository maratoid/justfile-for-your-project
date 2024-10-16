#!/usr/bin/env zsh
#
# Install bare-minumum 'just' pre-requisites

if [[ $(command -v brew) == "" ]]; then
  echo "Installing Hombrew"
  /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install just glow fzf jq

echo "Please add the following to your '~/.zshrc': 'export JUST_UNSTABLE=1'"
