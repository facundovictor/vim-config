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
    ln -s $INSTALL_DIR ~/.vim
    ln -s "${INSTALL_DIR}init.vim" ~/.vimrc
}

# Erase all previous fzf installations
function remove_previous_version () {
    rm -rf $INSTALL_DIR
    rm -f ~/.vim ~/.vimrc
}

# Install pygementize for coloring preview
function ensure_dependencies () {
    local dependencies

    mkdir -p "${INSTALL_DIR}plugged/"
    find $INSTALL_DIR -type d -exec chmod 777 \{} \;

    dependencies=(
        "automake"
        "xclip"
        "gcc"
        "gcc-c++"
        "kernel-devel"
        "cmake"
        "python-devel"
        "python3-devel"
        "node"
        "npm"
    )

    dnf install "${dependencies[@]}"
}

# Open vim and install the pluggins using vim-plug
function open_vim_and_install_plugins () {
    vim -c PlugInstall
}

function check_clipboard_support () {
    local support_clipboard
    local support_xterm_clipboard
    local result

    support_clipboard=$(vim --version | grep '\+clipboard')
    support_xterm_clipboard=$(vim --version | grep '\+xterm_clipboard')

    result=0;

    if [ "$support_clipboard" == "" ] ; then
        echo "Clipboard not supported!\n";
        result=1;
    fi
    if [ "$support_xterm_clipboard" == "" ] ; then
        echo "XTERM Clipboard not supported!\n";
        result=1;
    fi
    return $result;
}

###############################################################################

# Installation sequence
check_clipboard_support
remove_previous_version
git_clone
ensure_dependencies
install_vim_config
open_vim_and_install_plugins

echo "Vim config ready for running Plug install."
