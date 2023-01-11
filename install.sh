#!/usr/bin/env bash

cd "$(dirname "$0")"

case "$OSTYPE" in
  darwin*)
    os_name="macos"
    ;;
  linux*)
    os_name="linux"
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

declare -A vscode_dir=(
  [linux]="$HOME/.config/Code/User"
  [macos]="$HOME/Library/Application Support/Code/User"
)

create_symlink "$PWD/bash/bashrc" "$HOME/.bashrc"
create_symlink "$PWD/git/gitconfig" "$HOME/.gitconfig"
create_symlink "$PWD/vim/vimrc" "$HOME/.vimrc"
create_symlink "$PWD/vscode/keybindings-${os_name}.json" \
               "${vscode_dir[$os_name]}/keybindings.json"
create_symlink "$PWD/vscode/settings.json" \
               "${vscode_dir[$os_name]}/settings.json"
