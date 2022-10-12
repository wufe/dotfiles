#!/usr/bin/env bash
set -e

# Install ZSH
sudo apt-get install -y zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo 'alias cubbit="cd ~/cubbit"' >> ~/.bashrc
echo 'alias cubbit-tilt="cubbit && tilt -f coordinator/Tiltfile"' >> ~/.bashrc
echo 'alias cup="cubbit-tilt up"' >> ~/.bashrc
echo 'alias cdown="cubbit-tilt down"' >> ~/.bashrc

echo 'alias cubbit="cd ~/cubbit"' >> ~/.zshrc
echo 'alias cubbit-tilt="cubbit && tilt -f coordinator/Tiltfile"' >> ~/.zshrc
echo 'alias cup="cubbit-tilt up"' >> ~/.zshrc
echo 'alias cdown="cubbit-tilt down"' >> ~/.zshrc

source ~/.bashrc

# Change default shell
sudo chsh -s $(which zsh) coder