[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

export PATH="$HOME/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/share/custom/bin:$PATH"
export PATH="/home/levi/.cache/.bun/bin:$PATH"
export UWSM_DEFAULT_SESSION=hyprland
export EDITOR=nvim

alias vim="nvim"

alias gst="git status"
alias gcam="git commit -am"
alias ga="git add"
alias cd="z"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "rkh/zsh-jj"
plug "zsh-users/zsh-completions"

# Load and initialise completion system
autoload -Uz compinit
compinit

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
