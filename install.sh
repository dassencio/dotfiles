#!/usr/bin/env bash

cd "$(dirname "$0")"

case "$OSTYPE" in
  darwin*)
    os_name="macos"
    vscode_dir="Library/Application Support/Code/User"
    ;;
  linux*)
    os_name="linux"
    vscode_dir=".config/Code/User"
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
  ln -fsv "$PWD/$source_file" "$HOME/$link_name"
}

create_symlink "bash/bashrc" ".bashrc"
create_symlink "git/gitconfig" ".gitconfig"
create_symlink "vim/vimrc" ".vimrc"
create_symlink "vscode/keybindings-${os_name}.json" "$vscode_dir/keybindings.json"
create_symlink "vscode/settings.json" "$vscode_dir/settings.json"
create_symlink "zsh/custom.zsh-theme" ".oh-my-zsh/custom/themes/custom.zsh-theme"
create_symlink "zsh/zshrc" ".zshrc"
