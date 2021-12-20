# vim: set ft=bash:
alias sudo="nocorrect sudo"
alias ll='ls -l'
alias la='ls -A'

# tmux aliases
alias ta="tmux attach -d -t"
alias tn="cd $HOME; tmux new -s"
alias tl="tmux ls 2>/dev/null || echo 'No sessions available'"

alias rg="grep -nrHI"
alias rtest="rspec -f d"
alias ports='sudo lsof -i -P | grep -i "listen"'

if which gfind &>/dev/null ; then
  alias find='gfind'
fi

alias pf="fzf_passwd"
