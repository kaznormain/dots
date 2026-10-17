fpath=(/usr/share/zsh/site-functions $fpath)

_plugin() { local f; for f in "$@"; do [[ -r $f ]] && { source "$f"; return; }; done }

_plugin /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.zsh \
        ${HOMEBREW_PREFIX:+$HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.zsh}

_plugin /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh \
        ${HOMEBREW_PREFIX:+$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh}

_plugin /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh \
        ${HOMEBREW_PREFIX:+$HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh}

_plugin /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \
        ${HOMEBREW_PREFIX:+$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh}

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
