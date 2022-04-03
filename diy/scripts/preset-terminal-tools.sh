#!/bin/bash

mkdir -p files/root
pushd files/root

## Install oh-my-zsh
# Clone oh-my-zsh repository
git clone https://github.com/robbyrussell/oh-my-zsh ./.oh-my-zsh

# Install extra plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ./.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ./.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ./.oh-my-zsh/custom/plugins/zsh-completions

#Add themes powerlevel10k
#git clone https://github.com/romkatv/powerlevel10k.git ./.oh-my-zsh/custom//themes/powerlevel10k

# Get .zshrc dotfile
cp $GITHUB_WORKSPACE/diy/data/zsh/.zshrc .

popd
