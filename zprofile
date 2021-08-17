
# Enable using arrow keys to traverse command history in iex
export ERL_AFLAGS="-kernel shell_history enabled"

# Vagrant
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS=1
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH=/mnt/c/Users/smartin
export PATH=$PATH:/mnt/c/Windows/System32
export PATH=$PATH:/mnt/c/ProgramData/Microsoft/Windows/Hyper-V

. $HOME/.asdf/asdf.sh
