eval "$(mise activate zsh)"

eval "$(zoxide init zsh)"

if command -v usage >/dev/null 2>&1; then
    source <(usage g completion-init zsh)
fi

if command -v herdr >/dev/null 2>&1; then
    eval "$(herdr completions zsh)"
fi

if command -v rustup >/dev/null 2>&1; then
    . "$HOME/.cargo/env"
    eval "$(rustup completions zsh)"
fi

if command -v rex >/dev/null 2>&1; then
    eval "$(rex completion zsh)"
fi
