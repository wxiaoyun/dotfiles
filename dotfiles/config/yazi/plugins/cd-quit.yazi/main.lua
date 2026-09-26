--- @sync entry
return {
	entry = function()
		local h = cx.active.current.hovered
		if h and h.cha.is_dir then
			ya.emit("enter", {})
			ya.emit("quit", {})
		else
			ya.emit("open", {})
		end
	end,
}
