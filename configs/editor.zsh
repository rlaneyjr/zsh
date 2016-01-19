# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
export VISUAL='mvim'

## Thoughtbot's config
#export VISUAL=vim
#export EDITOR=$VISUAL
