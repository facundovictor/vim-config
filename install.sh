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
    local -a dependencies
    local -a rh_deps
    local -a deb_deps
    local install
    local distro

    rh_deps=(
        "automake"
        "gcc"
        "gcc-c++"
        "kernel-devel"
        "cmake"
        "python-devel"
        "python3-devel"
        "node"
        "npm"
    )
    deb_deps=(
        "automake"
        "gcc"
        "g++"
        "linux-headers-generic"
        "cmake"
        "python-dev"
        "python3-dev"
        "nodejs"
        "npm"
    )
    distro="$(lsb_release -si)"

    case "$distro" in
        LinuxMint)
            install="apt-get install -y"
            dependencies="${deb_deps[*]}"
        ;;

        Fedora)
            install="dnf -y install"
            dependencies="${rh_deps[*]}"
        ;;

        *)
            echo "ERROR: The distribution $distro is not supported"
            exit 1
        ;;
    esac

    mkdir -p "${INSTALL_DIR}plugged/"
    find $INSTALL_DIR -type d -exec chmod 0777 \{\} \;

    #shellcheck disable=SC2068
    $install ${dependencies[@]}
}

# Open vim and install the pluggins using vim-plug
function open_vim_and_install_plugins () {
    vim -c PlugInstall
}

# Ensure the installed vim has clipboard dependencies
function check_clipboard_support () {
    local support_clipboard
    local support_xterm_clipboard

    support_clipboard=$(vim --version | grep '\+clipboard')
    support_xterm_clipboard=$(vim --version | grep '\+xterm_clipboard')

    if [ "$support_clipboard" == "" ] || [ "$support_xterm_clipboard" == "" ] ; then
        echo 'Clipboard not supported!';
        echo 'Install vim-X11 and set the alias vim=vimx';
        return 1;
    fi
    return 0;
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
