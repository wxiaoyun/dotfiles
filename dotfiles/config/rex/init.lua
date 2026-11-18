-- Rex config migrated from tmux, Herdr and Ghostty.

-- tmux (~/.tmux.conf), prefix ctrl+a
rex.bind("ctrl+a>r", "client.config.reload")
rex.bind("ctrl+a>ctrl+a", "pane.send_key", { key = "ctrl+a" })
rex.bind("ctrl+a>shift+\\", "pane.split", { direction = "right" })
rex.bind("ctrl+a>-", "pane.split", { direction = "down" })
rex.bind("ctrl+a>h", "pane.focus", { direction = "left" })
rex.bind("ctrl+a>j", "pane.focus", { direction = "down" })
rex.bind("ctrl+a>k", "pane.focus", { direction = "up" })
rex.bind("ctrl+a>l", "pane.focus", { direction = "right" })
rex.bind("ctrl+a>n", "client.tab.next")

-- tmux repeatable (bind -r) bindings: ctrl+a ctrl+r enters, enter or escape leaves
rex.mode("repeat", { exclusive = true })
rex.bind("ctrl+a>ctrl+r", "client.mode.enter", { name = "repeat" })
rex.bind("repeat/enter", "client.mode.exit")
rex.bind("repeat/escape", "client.mode.exit")
rex.bind("repeat/h", "pane.focus", { direction = "left" })
rex.bind("repeat/j", "pane.focus", { direction = "down" })
rex.bind("repeat/k", "pane.focus", { direction = "up" })
rex.bind("repeat/l", "pane.focus", { direction = "right" })
rex.bind("repeat/n", "client.tab.next")

-- Herdr (~/.config/herdr/config.toml), prefix ctrl+s
rex.bind("ctrl+s>ctrl+s", "pane.send_key", { key = "ctrl+s" })
rex.bind("ctrl+s>shift+k", "session.previous")
rex.bind("ctrl+s>shift+j", "session.next")

-- Ghostty (~/.config/ghostty/config)
rex.bind("shift+cmd+w", "client.tab.close")
rex.bind("alt+cmd+left", "client.tab.previous")
rex.bind("alt+cmd+right", "client.tab.next")
