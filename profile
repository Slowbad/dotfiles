# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval `ssh-agent -s`
	ssh-add
fi

export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$PATH:$HOME/.elixir-ls/release"

# Enable using arrow keys to traverse command history in iex
export ERL_AFLAGS="-kernel shell_history enabled"

# Vagrant
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS=1
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH=/mnt/c/Users/smartin
export VAGRANT_DEFAULT_PROVIDER=hyperv
export PATH=$PATH:/mnt/c/Windows/System32
export PATH=$PATH:/mnt/c/ProgramData/Microsoft/Windows/Hyper-V

# Postgres
alias pgstart='sudo service postgresql start'
alias pgstatus='sudo service postgresql status'
alias pg='sudo -u postgres psql'

. $HOME/.asdf/asdf.sh

