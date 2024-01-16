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
alias docker-compose="docker compose"



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(thefuck --alias)"

# Created by `pipx` on 2023-01-17 08:22:59
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/~/.rye/shims:$PATH"
export PATH="$PATH:/home/long/.local/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# pnpm
export PNPM_HOME="/home/long/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm endexport NI_CONFIG_FILE=/home/long/.config/ni/nirca
export NI_CONFIG_FILE="$HOME/.config/ni/nirc"

# remove duplicate PATH

PATH=`printf %s "$PATH" | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}'`

## [Completion] 
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/long/.dart-cli-completion/zsh-config.zsh ]] && . /home/long/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

fpath+=~/.zfunc
autoload -Uz compinit && compinit

# bun completions
[ -s "/home/long/.bun/_bun" ] && source "/home/long/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
