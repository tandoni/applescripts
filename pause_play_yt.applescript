tell application "Google Chrome"
	repeat with t in tabs of windows
		tell t
			if URL starts with "http://www.youtube.com" or URL starts with "https://www.youtube.com" then
				execute javascript "button = document.getElementsByClassName('ytp-play-button')[0]
if (button) {
    button.click()
}"
				exit repeat
			end if
		end tell
	end repeat
end tell