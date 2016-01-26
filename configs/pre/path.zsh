## ensure bin and my scripts directory is loaded first
#export PATH="$HOME/.bin:$HOME/scripts:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin/python:/usr/local/bin/python3:/opt/X11/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#
## load rbenv if available
#if command -v rbenv &>/dev/null ; then
#  eval "$(rbenv init - --no-rehash)"
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
## mkdir .git/safe in the root of repositories you trust
#export PATH=".git/safe/../../bin:$PATH"
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



##
## Paths for all Computers
##
#
##  Add the ~/bin/ directory for all users
#export PATH=$PATH:~/bin
#
##
## OS Specific Paths
##
#
## OS X Aliases
#if [[ $CURRENT_OS == 'OS X' ]]; then
#    #
#    # Prefixed Paths
#    #
#
#    # Prefix /usr/local/bin for brew
#    export PATH=/usr/local/bin:$PATH
#
#    # Rbenv
#    export PATH=~/.rbenv/shims:$PATH
#
#    #
#    # Normal Paths
#    #
#
#    # MIT-Scheme
#    export MITSCHEME_LIBRARY_PATH=/usr/local/lib/mit-scheme-c/
#    # Nmap
#    export PATH=$PATH:/Users/rlaney/.nmap
#    #  Django
#    export PATH=$PATH:/Library/Python/2.7/site-packages/django/bin
#    #  MacPorts
#    export PATH=$PATH:/opt/local/bin
#    #  Add the bin/Mac directory
#    export PATH=$PATH:~/bin/Mac
#    # Add all npm packages
#    export PATH=$PATH:/usr/local/share/npm/bin
#
#    # Add Java jars (like checkstyle, etc)
#    export PATH=$PATH:~/jars
#elif [[ $CURRENT_OS == 'Linux' ]]; then
#    # Prefix /usr/local/bin for brew if it exists
#    if hash brew 2>/dev/null; then
#        export PATH="$HOME/.linuxbrew/bin:$PATH"
#        export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
#    fi
#
#    #  Add the bin/Arch directory
#    export PATH=$PATH:~/bin/Arch
#    export PATH=$PATH:~/bin/appengine
#    export PATH=$PATH:~/.cabal/bin
#    export PATH=$PATH:~/bin/
#
#    # CentOS Paths
#    if [[ $DISTRO == 'CentOS' ]]; then
#        # Add LaTeX to path
#        export PATH=$PATH:/usr/local/texlive/2013/bin/x86_64-linux
#    fi
#
#    #
#    # User Specific Aliases
#    #
#
#    if [[ $USER == 'rlaney' ]]; then
#        # Home Linux
#    elif [[ $USER == 'rlaney2' ]]; then
#        # Work Linux
#
#        # Android SDK Tools
#        export PATH=$PATH:~/Programming/SDKs/tools
#        # Android SDK Platform Tools
#        export PATH=$PATH:~/Programming/SDKs/platform-tools
#        # Jars
#        export PATH=$PATH:~/jars
#    fi
#elif [[ $CURRENT_OS == 'Cygwin' ]]; then
#    #
#fi
