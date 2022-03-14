#!/usr/bin/env bash

cd "$(dirname "$0")"

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

create_symlink() {
  local source_file="$1"
  local link_name="$2"
  mkdir -p "$(dirname "$link_name")"
  ln -fsv "$source_file" "$link_name"
}

create_symlink "$PWD/bash/bashrc" "$HOME/.bashrc"
create_symlink "$PWD/git/gitconfig" "$HOME/.gitconfig"
create_symlink "$PWD/vim/vimrc" "$HOME/.vimrc"
create_symlink "$PWD/vscode/keybindings.json" "$vscode_dir/keybindings.json"
