_plugin() { local f; for f in "$@"; do [[ -r $f ]] && { source "$f"; return; }; done }

_plugin /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh \
        ${HOMEBREW_PREFIX:+$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh}

_plugin /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh \
        ${HOMEBREW_PREFIX:+$HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh}

_plugin /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \
        ${HOMEBREW_PREFIX:+$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh}
