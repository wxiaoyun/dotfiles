export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export LANG=en_US.UTF-8
export EDITOR=nvim
export MANPAGER="nvim +Man!"
if GPG_TTY=$(tty 2>/dev/null); then
  export GPG_TTY
fi
