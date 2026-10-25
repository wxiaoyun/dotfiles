export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
  --height=80%
  --layout=reverse
  --prompt="  "
  --pointer="  "
  --preview-window=right:65%:wrap
'
export _FZF_PREVIEW_CMD='bat --color=always --style=plain,numbers --line-range=:500 {}'
export FZF_CTRL_T_OPTS="--preview '$_FZF_PREVIEW_CMD'"

zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:complete:(cd|z):*' fzf-preview 'eza --tree --level=2 --color=always --icons=always -- "$realpath"'
zstyle ':fzf-tab:complete:tldr:*' fzf-preview '[[ $word == -* ]] || tldr --offline --color always -- $word'
zstyle ':fzf-tab:complete:-command-:*' fzf-preview '
  case $group in
    *"external command"*) tldr --offline --color always -- $word 2>/dev/null || whatis -- $word 2>/dev/null ;;
    *) whence -v -- $word ;;
  esac
'
