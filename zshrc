# Path to your oh-my-zsh configuration.

echo "Sourcing env.sh"
source ~/env.sh

echo "Sourcing fzf.sh"
source ~/fzf.sh

echo "Sourcing alias.sh"
source ~/alias.sh

echo "Sourcing path.sh"
source ~/path.sh

# dirhistory: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dirhistory
plugins=(git history dirhistory)

if [ -e $HOME/.oh-my-zsh ]; then
  source $ZSH/oh-my-zsh.sh
fi

setopt inc_append_history
setopt share_history

setopt histignorespace
setopt histignorealldups
setopt histreduceblanks
setopt histsavenodups

unsetopt listambiguous

autoload -U compinit
compinit

eval "$(pyenv init -)"

alias harbor-login="docker login -u sochoa -p \"$(get_passwd harbor/sochoa)\" artifacts.msap.io"

. /usr/local/etc/profile.d/z.sh
