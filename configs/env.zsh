# Owner
export USER_NAME="Ricky Laney"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Get nice colors
export TERM='xterm-256color'

# SSH-Keys
export SSH_KEY_PATH="$HOME/.ssh/ssh_rsa:$HOME/.ssh/cloud_id"
# Setup SSH-Keys for me.
#/usr/local/bin/expect << EOF
#source $HOME/scripts/ralssh.exp
#EOF

# User specified directories.  Can be overriden with local command.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
#export HOMEBREW_GITHUB_API_TOKEN='24c53d1f9d2e5886d14c75221c99ebc3e4e14c16'

# Fix MacVim with an alias
#alias mvim='/usr/local/Cellar/macvim/7.4-81/MacVim.app'
# Fix MacVim fullscreen black bars
#defaults write org.vim.MacVim MMNativeFullScreen 0

# Tmux HOSTS variable for Multi-SSH script
export HOSTS='controller01 compute01 compute02 ns2 block01'

# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# Which autoenv do you want to use?
source $HOME/.zsh/zsh-autoenv/autoenv.zsh
#source $HOME/.zsh/autoenv/activate.sh
#source /usr/local/opt/autoenv/activate.sh

# Ansible Environment
#export ANSIBLE_CONFIG=$HOME/Projects/ansible/ansible.cfg

## ZSH-AUTOENV ##
#Name of the file to look for when entering directories.
#Default: `.autoenv.zsh`
AUTOENV_FILE_ENTER='.autoenv.zsh'
#Name of the file to look for when leaving directories.
#Requires `AUTOENV_HANDLE_LEAVE=1`.
#Default: `.autoenv_leave.zsh`
AUTOENV_FILE_LEAVE='.autoenv_leave.zsh'
#Look for zsh-autoenv "enter" files in parent dirs?
#Default: `1`
AUTOENV_LOOK_UPWARDS='1'
#Handle leave events when changing away from a subtree, where an "enter"
#event was handled?
#Default: `1`
AUTOENV_HANDLE_LEAVE='1'
#(Temporarily) disable zsh-autoenv. This gets looked at in the chpwd handler.
#Default: 0
AUTOENV_DISABLED='0'
#Enable debugging. Multiple levels are supported (max 2).
#Default: 0
AUTOENV_DEBUG='0'
