#!/usr/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

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
echo 'alias k="kubectl"' >> ~/.zshrc

source ~/.bashrc

# Change default shell
sudo chsh -s $(which zsh) coder

# Install powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
cp ${SCRIPT_DIR}/.p10k.zsh ~/.p10k.zsh
echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo 'plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' >> ~/.zshrc
echo '[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh' >> ~/.zshrc
echo 'source $ZSH/oh-my-zsh.sh' >> ~/.zshrc