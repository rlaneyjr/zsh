## ensure bin and my scripts directory is loaded first
#export PATH="$HOME/.bin:$HOME/scripts:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin/python:/usr/local/bin/python3:/opt/X11/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#
## mkdir .git/safe in the root of repositories you trust
##export PATH=".git/safe/../../bin:$PATH"
#
## load our own completion functions
#fpath=(~/.zsh/completion /usr/local/share/zsh-completions /usr/local/share/zsh/site-functions $fpath)
#eval "$(pandoc --bash-completion)"
#
## completion
#autoload -U compinit
#compinit
#
## To use the new coreutils:
#export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
#
##export EDITOR='vim'
#export PYTHONPATH="/usr/bin/python:$PYTHONPATH"
#export MANPATH="/usr/local/man:$MANPATH"
#
## Java
##export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"
#export JAVA_HOME="'/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home -v 1.8'"
#
## Owner
#export USER_NAME="Ricky Laney"
#
## You may need to manually set your language environment
#export LANG=en_US.UTF-8
#
## Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
#else
#  export EDITOR='mvim'
#fi
##export VISUAL='mvim'
#
### Thoughtbot's config
##export VISUAL=vim
##export EDITOR=$VISUAL
#
## Get nice colors
#export TERM='xterm-256color'
#
## SSH-Keys
#export SSH_KEY_PATH="$HOME/.ssh/ssh_rsa:$HOME/.ssh/cloud_id"
## Setup SSH-Keys for me.
##/usr/local/bin/expect << EOF
##source $HOME/scripts/ralssh.exp
##EOF
#
## User specified directories.  Can be overriden with local command.
#export HOMEBREW_CASK_OPTS="--appdir=/Applications"
##export HOMEBREW_GITHUB_API_TOKEN='24c53d1f9d2e5886d14c75221c99ebc3e4e14c16'
#
## Fix MacVim with an alias
##alias mvim='/usr/local/Cellar/macvim/7.4-81/MacVim.app'
## Fix MacVim fullscreen black bars
##defaults write org.vim.MacVim MMNativeFullScreen 0
#
## Tmux HOSTS variable for Multi-SSH script
##export HOSTS='controller01 compute01 compute02 ns2 block01'
#
## Virtual Environment
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Projects
#source /usr/local/bin/virtualenvwrapper.sh
#
## Which autoenv do you want to use?
#source $HOME/.zsh/zsh-autoenv/autoenv.zsh
##source $HOME/.zsh/autoenv/activate.sh
##source /usr/local/opt/autoenv/activate.sh
#
## Ansible Environment
##export ANSIBLE_CONFIG=$HOME/Projects/ansible/ansible.cfg
#
### ZSH-AUTOENV ##
##Name of the file to look for when entering directories.
##Default: `.autoenv.zsh`
#AUTOENV_FILE_ENTER='.autoenv.zsh'
##Name of the file to look for when leaving directories.
##Requires `AUTOENV_HANDLE_LEAVE=1`.
##Default: `.autoenv_leave.zsh`
#AUTOENV_FILE_LEAVE='.autoenv_leave.zsh'
##Look for zsh-autoenv "enter" files in parent dirs?
##Default: `1`
#AUTOENV_LOOK_UPWARDS='1'
##Handle leave events when changing away from a subtree, where an "enter"
##event was handled?
##Default: `1`
#AUTOENV_HANDLE_LEAVE='1'
##(Temporarily) disable zsh-autoenv. This gets looked at in the chpwd handler.
##Default: 0
#AUTOENV_DISABLED='0'
##Enable debugging. Multiple levels are supported (max 2).
##Default: 0
#AUTOENV_DEBUG='0'
#
## load rbenv if available
#if command -v rbenv &>/dev/null ; then
#  eval "$(rbenv init - --no-rehash zsh)"
#fi
##eval "$(rbenv init - --no-rehash zsh)"
##eval "$(rbenv init -)"
## Use these commands to work in different versions of ruby
## rbenv install 2.1.1
## rbenv rehash
## rbenv global 2.1.1
#
## Node Virtual Machine
#export NVM_DIR="$HOME/.nvm"
#[ -s "$(brew --prefix nvm)/nvm.sh" ] && . $(brew --prefix nvm)/nvm.sh  # This loads nvm
## Original loader from install
##. $(brew --prefix nvm)/nvm.sh
## Old nvm loader
##[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#
## makes color constants available
#autoload -U colors
#colors
#
## enable colored output from ls, etc. on FreeBSD-based systems
#export CLICOLOR=1
#
#setopt hist_ignore_all_dups inc_append_history
#HISTFILE=$HOME/.zsh_history
#HISTSIZE=4096
#SAVEHIST=4096
#
## awesome cd movements from zshkit
#setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
#DIRSTACKSIZE=5
#
## Enable extended globbing
#setopt extendedglob
#
## Allow [ or ] whereever you want
#unsetopt nomatch
#
#setopt NO_BG_NICE
#setopt NO_HUP
#setopt NO_LIST_BEEP
#setopt LOCAL_OPTIONS
#setopt LOCAL_TRAPS
##setopt IGNORE_EOF
#setopt PROMPT_SUBST
#
## history
#setopt HIST_VERIFY
#setopt EXTENDED_HISTORY
#setopt HIST_REDUCE_BLANKS
#setopt SHARE_HISTORY
#setopt HIST_IGNORE_ALL_DUPS
#setopt INC_APPEND_HISTORY SHARE_HISTORY
#setopt APPEND_HISTORY
#
#setopt COMPLETE_ALIASES
#
## vi mode
#setopt vi
#
## vi mode
#bindkey -v
#bindkey "^F" vi-cmd-mode
#
## handy keybindings
#bindkey "^A" beginning-of-line
#bindkey "^E" end-of-line
#bindkey "^K" kill-line
#bindkey "^R" history-incremental-search-backward
#bindkey "^P" history-search-backward
#bindkey "^Y" accept-and-hold
#bindkey "^N" insert-last-word
#bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"
#
### OLD Key Bindings
### make terminal command navigation sane again
##bindkey '^[^[[D' backward-word
##bindkey '^[^[[C' forward-word
##bindkey '^[[5D' beginning-of-line
##bindkey '^[[5C' end-of-line
##bindkey '^[[3~' delete-char
##bindkey '^[^N' newtab
##bindkey '^?' backward-delete-char
