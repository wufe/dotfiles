#!/usr/bin/env bash
set -e

# Extensions
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension earshinov.filter-lines
code --install-extension EditorConfig.EditorConfig
code --install-extension fvclaus.sort-json-array
code --install-extension golang.go
code --install-extension L13RARY.l13-diff
code --install-extension mf.vscode-styled-components
code --install-extension mhutchie.git-graph
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension naumovs.color-highlight
code --install-extension rangav.vscode-thunder-client
code --install-extension rbbit.typescript-hero
code --install-extension redhat.vscode-yaml
code --install-extension richie5um2.vscode-sort-json
code --install-extension rust-lang.rust-analyzer
code --install-extension StackBuild.bazel-stack-vscode
code --install-extension Tyriar.sort-lines
code --install-extension vscode-icons-team.vscode-icons
code --install-extension wayou.vscode-todo-highlight
code --install-extension xaver.clang-format
code --install-extension zxh404.vscode-proto3

# Settings

mkdir -p ${HOME}/.local/share/code-server/User

cp ./settings.json ${HOME}/.local/share/code-server/User/settings.json
cp ./keybindings.json ${HOME}/.local/share/code-server/User/keybindings.json
