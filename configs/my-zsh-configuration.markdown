Title: My zsh configuration
Date: 2013-10-06 13:10

# Intro
I remember when I was told about zsh for the first time. It was during
a code camp organized by [LoLUT](http://ae.utbm.fr/lolut/). A weird network
guy called [lopar](http://chroot-me.in) laughted at my shell, and showed me his own.

Awesome completion, context-sensistive prompt, weird globing, ...
I <del>stole</del> borrowed [his config](http://chroot-me.in/dotfiles/.zshrc), and was happy
with it for years. Then, one day, I saw [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):
Tons of functionalities, like vcs support in prompt, autocompletion for anything and everything,
shitloads of themes, auto-updater, ... I was so happy that I wanted to use it on every
machines that I managed.

Wait.

I was going to blindly trust a bloated unsigned pile of shell script enough to run it on my machines,
sometimes as root ? Nop. Plus, oh-my-zsh is slow on low-end machines.

I trashed it, and decided to write my own .zshrc

# My .zshrc
Here it is, but you can also get it [here](https://dustri.org/pub/zshrc)

```bash
autoload -U colors zsh-mime-setup select-word-style
colors          # colors
zsh-mime-setup  # run everything as if it's an executable
select-word-style bash # ctrl+w on words

##
# Vcs info
##
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn hg
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats "%{$fg[yellow]%}%c%{$fg[green]%}%u%{$reset_color%} [%{$fg[blue]%}%b%{$reset_color%}] %{$fg[yellow]%}%s%{$reset_color%}:%r"
precmd() {  # run before each prompt
	vcs_info
}

##
# Prompt
##
setopt PROMPT_SUBST     # allow funky stuff in prompt
color="blue"
if [ "$USER" = "root" ]; then
	color="red"         # root is red, user is blue
fi;
prompt="%{$fg[$color]%}%n%{$reset_color%}@%U%{$fg[yellow]%}%m%{$reset_color%}%u %T %B%~%b "
RPROMPT='${vim_mode} ${vcs_info_msg_0_}'

##
# Key bindings
##
# Lookup in /etc/termcap or /etc/terminfo else, you can get the right keycode
# by typing ^v and then type the key or key combination you want to use.
# "man zshzle" for the list of available actions
bindkey -e                      # emacs keybindings
bindkey '\e[1;5C' forward-word            # C-Right
bindkey '\e[1;5D' backward-word           # C-Left
bindkey '\e[2~'   overwrite-mode          # Insert
bindkey '\e[3~'   delete-char             # Del
bindkey '\e[5~'   history-search-backward # PgUp
bindkey '\e[6~'   history-search-forward  # PgDn
bindkey '^A'      beginning-of-line       # Home
bindkey '^D'      delete-char             # Del
bindkey '^E'      end-of-line             # End
bindkey '^R'      history-incremental-pattern-search-backward 

##
# Completion
##
autoload -U compinit
compinit
zmodload -i zsh/complist        
setopt hash_list_all            # hash everything before completion
setopt completealiases          # complete alisases
setopt always_to_end            # when completing from the middle of a word, move the cursor to the end of the word    
setopt complete_in_word         # allow completion from within a word/phrase
setopt correct                  # spelling correction for commands
setopt list_ambiguous           # complete as much of a completion until it gets ambiguous.

zstyle ':completion::complete:*' use-cache on               # completion caching, use rehash to clear
zstyle ':completion:*' cache-path ~/.zsh/cache              # cache path
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # ignore case
zstyle ':completion:*' menu select=2                        # menu if nb items > 2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}       # colorz !
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate # list of completers to use

# sections completion !
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format $'\e[00;34m%d'
zstyle ':completion:*:messages' format $'\e[00;31m%d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true

zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=29=34"
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*' force-list always
users=(jvoisin root)           # because I don't care about others
zstyle ':completion:*' users $users

#generic completion with --help
compdef _gnu_generic gcc
compdef _gnu_generic gdb

##
# Pushd
##
setopt auto_pushd               # make cd push old dir in dir stack
setopt pushd_ignore_dups        # no duplicates in dir stack
setopt pushd_silent             # no dir stack after pushd or popd
setopt pushd_to_home            # `pushd` = `pushd $HOME`
#
##
# History
##
HISTFILE=~/.zsh_history         # where to store zsh config
HISTSIZE=1024                   # big history
SAVEHIST=1024                   # big history
setopt append_history           # append
setopt hist_ignore_all_dups     # no duplicate
unsetopt hist_ignore_space      # ignore space prefixed commands
setopt hist_reduce_blanks       # trim blanks
setopt hist_verify              # show before executing history commands
setopt inc_append_history       # add commands as they are typed, don't wait until shell exit 
setopt share_history            # share hist between sessions
setopt bang_hist                # !keyword

##
# Various
##
setopt auto_cd                  # if command is a path, cd into it
setopt auto_remove_slash        # self explicit
setopt chase_links              # resolve symlinks
setopt correct                  # try to correct spelling of commands
setopt extended_glob            # activate complex pattern globbing
setopt glob_dots                # include dotfiles in globbing
setopt print_exit_value         # print return value if non-zero
unsetopt beep                   # no bell on error
unsetopt bg_nice                # no lower prio for background jobs
unsetopt clobber                # must use >| to truncate existing files
unsetopt hist_beep              # no bell on error in history
unsetopt hup                    # no hup signal at shell exit
unsetopt ignore_eof             # do not exit on end-of-file
unsetopt list_beep              # no bell on ambiguous completion
unsetopt rm_star_silent         # ask for confirmation for `rm *' or `rm path/*'
setxkbmap -option compose:ralt  # compose-key
print -Pn "\e]0; %n@%M: %~\a"   # terminal title

source ~/.alias                 # aliases
```

# Get notified when someone logs in

```bash
watch=all                       # watch all logins
logcheck=30                     # every 30 seconds
WATCHFMT="%n from %M has %a tty%l at %T %W"
```

# Show vim mode in you prompt
All you have to do is to place this snippet in your .zshrc, and to use _$vim_mode_ in your prompt.

```bash
bindkey -v      # vi mode
vim_ins_mode="%{$fg[yellow]%}[INS]%{$reset_color%}"
vim_cmd_mode="%{$fg[cyan]%}[CMD]%{$reset_color%}"
vim_mode=$vim_ins_mode

function zle-keymap-select {
	vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
	zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
	vim_mode=$vim_ins_mode
}
zle -N zle-line-finish
```

# Misc tricks

  * `Esc + h` : Get help about a command. 
  * Prepending a `-` to a command returns the same result as with `which`. This is useful to bypass aliases.
  * `!!` is subsitued to your latest command
  * `!?foo` last commend containing _foo_
  * `binkey` shows all your currents keybindings
  * `autoload -U tetris && tetris`
  * `print -l -- ${(o)history%% *} | uniq -c | sort -nr | head -n 10` : top 10 of your commands

# Links
  * [git in zsh](http://eseth.org/2010/git-in-zsh.html)
  * [zsh-pony](https://github.com/mika/zsh-pony)
  * [zsh wiki](http://zshwiki.org/home/)
  * [grml's zsh](http://grml.org/zsh/)
