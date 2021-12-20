# vim: set ft=bash:

export TZ=America/Los_Angeles
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LESS=-Ri
export EDITOR='vim'
export VISUAL=$EDITOR
export PSQL_EDITOR=$EDITOR

if [ -e $HOME/.oh-my-zsh ]; then
  export ZSH=$HOME/.oh-my-zsh
  export ZSH_THEME="amuse"
fi

export HISTFILE="$HOME/.${USER}_zsh_history"

if [ -e "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
fi


# Salesforce
export KUBEVERSION=v1.17.5
