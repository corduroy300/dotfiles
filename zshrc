# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matthew/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Bash stuff
  [[ -f $HOME/.dircolors ]] && eval $(dircolors -b $HOME/.dircolors)
  if $_isxrunning; then

    [[ -f $HOME/.dircolors_256 ]] && eval $(dircolors -b $HOME/.dircolors_256)

    export TERM='xterm-256color'

    B='\[\e[1;38;5;33m\]'
    LB='\[\e[1;38;5;81m\]'
    GY='\[\e[1;38;5;242m\]'
    G='\[\e[1;38;5;82m\]'
    P='\[\e[1;38;5;161m\]'
    PP='\[\e[1;38;5;93m\]'
    R='\[\e[1;38;5;196m\]'
    Y='\[\e[1;38;5;214m\]'
    W='\[\e[0m\]'

    if ! $_isroot; then
      export PS1="$GY[$Y\u$GY@$P\h$W:$B\W$GY]$W\$ "
    else
      export PS1="$GY[$R\u$GY@$P\h$W:$B\W$GY]$W# "
    fi
  else
    export TERM='xterm-color'
  fi
