# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=$(which nvim)



plugins=( git
          zsh-autosuggestions
          z
          nvm
  )

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

#alias 

alias ls="exa -G --colour always --icons"
alias la="exa -l --icons"
alias ll="exa --colour always -l --icons"
alias lla="ll -a --colour always --icons"
