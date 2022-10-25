# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

alias ls="exa -G --colour always --icons"
alias la="exa -l"
alias ll="exa --colour always -la"
alias lla="ll -A --colour always --icons"


plugins=( git
          zsh-autosuggestions
          z
          nvm
  )

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
