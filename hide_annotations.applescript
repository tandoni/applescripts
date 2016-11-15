tell application "Google Chrome"
	repeat with t in tabs of windows
		tell t
			if URL starts with "http://www.youtube.com" or URL starts with "https://www.youtube.com" then
				execute javascript "
        var player =  document.querySelectorAll('.video-stream.html5-main-video')[0] || document.getElementById('movie_player');
        var next =  document.querySelectorAll('.video-annotations')[0];
        if (player && next) {
          next.style.visibility = 'hidden';
        }
        "
				exit repeat
			end if
		end tell
	end repeat
end tell
