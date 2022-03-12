#!/usr/bin/env bash

cd "$(dirname $0)"

case "$OSTYPE" in
  darwin*)
    vscode_dir="$HOME/Library/Application Support/Code/User"
    ;;
  linux*)
    vscode_dir="$HOME/.config/Code/User"
    ;;
  *)
    echo "Operating system is not supported."
    exit 1
    ;;
esac

ln -fsv "$PWD/vscode/keybindings.json" "$vscode_dir/keybindings.json"
