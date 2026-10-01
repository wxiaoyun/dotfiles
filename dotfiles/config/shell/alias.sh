alias ls="eza --color --icons --group-directories-first"
alias lla="eza -lah --icons --git"
alias tree='eza --tree --icons'
alias cd="z"
alias mv="mv -iv"
alias rm="rm -I"
alias grep="grep --color=auto"
alias pn="pnpm"

alias srcpy="source .venv/bin/activate"

spf() {
    local lastdir="${XDG_STATE_HOME:-$HOME/.local/state}/superfile/lastdir"

    command spf "$@"

    [ ! -f "$lastdir" ] || {
        . "$lastdir"
        command rm -f -- "$lastdir"
    }
}
