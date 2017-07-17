-- I know there is an easier way to do it by assigning hotkeys but Ive been trying to pick up Applescripts. It's really fun. :)

on run {input, parameters}
	tell application "Terminal"
		activate
	end tell
	return input
end run