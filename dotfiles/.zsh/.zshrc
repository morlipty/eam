#fastfetch and color sceme
(fastfetch --config examples/13 &)

#imports
source ~/.cache/wal/colors.sh

#setopts
setopt autocd
setopt autopushd
setopt histignorealldups

#enable history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt sharehistory
setopt appendhistory

#prompt
eval "$(starship init zsh)"

#inits
fuck() {
  eval "$(thefuck --alias)"
  fuck "$@"
}
source <(fzf --zsh)

#plugins
source ~/.zsh/.antidote/antidote.zsh
source ~/.zsh/.zsh_plugins.zsh
source ~/.zsh/sudo.zsh
zstyle ':autocomplete:*' delay 0.25

#aliases and functions
source ~/.zsh/aliases_and_functions.zsh

export PATH=$PATH:/home/morlipty/.spicetify
