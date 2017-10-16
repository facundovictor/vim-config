#!/bin/bash

# Install directory
INSTALL_DIR=/opt/vim_configs/

# Clones the vim config repo without unnecessary git info.
function git_clone () {
	mkdir -p $INSTALL_DIR
	git clone --depth 1 https://github.com/facundovictor/vim-config.git $INSTALL_DIR
}

# Execute the vim config official installer
function install_vim_config () {
	ln -s $INSTALL_DIR/ ~/.vim
}

# Erase all previous fzf installations
function remove_previous_version () {
	rm -rf $INSTALL_DIR
}

# Install pygementize for coloring preview
function ensure_dependencies () {
}

###############################################################################

# Installation sequence
remove_previous_version
ensure_dependencies
git_clone
install_vim_config

echo "Vim config ready for running Plug install."
