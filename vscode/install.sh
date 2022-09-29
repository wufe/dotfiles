#!/usr/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Extensions
code-server --install-extension dbaeumer.vscode-eslint
code-server --install-extension eamodio.gitlens
code-server --install-extension earshinov.filter-lines
code-server --install-extension EditorConfig.EditorConfig
code-server --install-extension fvclaus.sort-json-array
code-server --install-extension golang.go
code-server --install-extension L13RARY.l13-diff
code-server --install-extension mf.vscode-styled-components
code-server --install-extension mhutchie.git-graph
code-server --install-extension ms-vscode.cpptools
code-server --install-extension ms-vscode.vscode-typescript-tslint-plugin
code-server --install-extension ms-vsliveshare.vsliveshare
code-server --install-extension naumovs.color-highlight
code-server --install-extension rangav.vscode-thunder-client
code-server --install-extension rbbit.typescript-hero
code-server --install-extension redhat.vscode-yaml
code-server --install-extension richie5um2.vscode-sort-json
code-server --install-extension rust-lang.rust-analyzer
code-server --install-extension StackBuild.bazel-stack-vscode
code-server --install-extension Tyriar.sort-lines
code-server --install-extension vscode-icons-team.vscode-icons
code-server --install-extension wayou.vscode-todo-highlight
code-server --install-extension xaver.clang-format
code-server --install-extension zxh404.vscode-proto3

# Settings

mkdir -p ${HOME}/.local/share/code-server/User

cp ${SCRIPT_DIR}/settings.json ${HOME}/.local/share/code-server/User/settings.json
cp ${SCRIPT_DIR}/keybindings.json ${HOME}/.local/share/code-server/User/keybindings.json
