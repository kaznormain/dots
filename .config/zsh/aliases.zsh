alias reload="exec zsh"
alias mkdir="mkdir --verbose"
alias e="exit"
alias c="clear"
alias ..="z .."
alias ...="z ../.."
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias hm="z ~"
alias dt="z ~/.dotfiles"
alias dl="z ~/Downloads"
alias pj="z ~/Projects"
alias va="z ~/Vault"

alias v="nvim"
alias gac="git add -A && git commit -m"
alias gccw="gcc -Wall -Wextra -o"

# ls
if has eza; then
  alias ls="eza --icons always --group-directories-first"
  alias ll="eza --all --all --long --extended --header --git --smart-group --time-style iso --icons always --group-directories-first"
  # tree
  lt() {
    if [[ "$1" =~ ^[0-9]+$ ]]; then
      local level="$1"
      shift
      eza --all --icons always --group-directories-first --tree --level "$level" "$@"
    else
      eza --all --icons always --group-directories-first --tree "$@"
    fi
  }
  # recurse
  lr() {
    if [[ "$1" =~ ^[0-9]+$ ]]; then
      local level="$1"
      shift
      eza --all --all --long --extended --header --git --smart-group --time-style iso --icons always --group-directories-first --recurse --level "$level" "$@"
    else
      eza --all --all --long --extended --header --git --smart-group --time-style iso --icons always --group-directories-first --recurse "$@"
    fi
  }
else
  alias ll="ls -lah"
  alias lr="ls -lahR"
  # tree
  lt() {
    if [[ "$1" =~ ^[0-9]+$ ]]; then
      local level="$1"
      shift
      tree -a -L "$level" "$@"
    else
      tree -a "$@"
    fi
  }
fi

