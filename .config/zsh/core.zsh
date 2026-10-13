# source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# env vars
export EDITOR=vim VISUAL=vim
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# history
HISTFILE="$XDG_STATE_HOME/zsh/history"
mkdir -p "${HISTFILE:h}"
HISTSIZE=50000 SAVEHIST=50000
setopt HIST_IGNORE_ALL_DUPS HIST_IGNORE_SPACE SHARE_HISTORY
setopt AUTO_CD INTERACTIVE_COMMENTS

#setopt APPEND_HISTORY
#setopt INC_APPEND_HISTORY
#setopt HIST_REDUCE_BLANKS

# auto-complete
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# key binding
bindkey -e

# tmux auto-launch
if command -v tmux &> /dev/null && [ -z "$TMUX" ] && [ -n "$PS1" ] && [ -z "$VSCODE_INJECTION" ]; then
    tmux new-session -A -s main
fi
fastfetch
