alias ls="eza --color --icons --group-directories-first"
alias lla="eza -lah --icons --git"
alias tree='eza --tree --icons'
alias cd="z"
alias mv="mv -iv"
alias rm="rm -I"
alias grep="grep --color=auto"
alias pn="pnpm"

alias srcpy="source .venv/bin/activate"

function y() {
	local tmp cwd; tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd" || builtin true
	command rm -f -- "$tmp"
}