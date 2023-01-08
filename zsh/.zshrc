# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=$(which nvim)



plugins=( git
          zsh-autosuggestions
          z
          nvm
          zsh-history-substring-search
          zsh-syntax-highlighting
  )

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

#alias 

alias ls="exa -G --colour always --icons"
alias la="exa -l --icons"
alias ll="exa --colour always -l --icons"
alias lla="ll -a --colour always --icons"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/Users/hglong16/.micromamba/bin/micromamba";
export MAMBA_ROOT_PREFIX="/Users/hglong16/micromamba";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/Users/hglong16/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/Users/hglong16/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/Users/hglong16/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hglong16/micromamba/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hglong16/micromamba/etc/profile.d/conda.sh" ]; then
        . "/Users/hglong16/micromamba/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hglong16/micromamba/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

export PATH=~/Library/Application\ Support/pypoetry/venv/bin/:$PATH # poetry
