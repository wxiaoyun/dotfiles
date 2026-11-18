-- Rex config migrated from tmux, Herdr and Ghostty.

-- Herdr (~/.config/herdr/config.toml), prefix ctrl+s
rex.bind("ctrl+s>ctrl+s", "pane.send_key", { key = "ctrl+s" })
rex.bind("ctrl+s>shift+k", "session.previous")
rex.bind("ctrl+s>shift+j", "session.next")

-- Ghostty (~/.config/ghostty/config)
rex.bind("shift+cmd+w", "client.tab.close")
rex.bind("alt+cmd+left", "client.tab.previous")
rex.bind("alt+cmd+right", "client.tab.next")
