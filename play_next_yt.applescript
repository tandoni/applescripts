tell application "Google Chrome"
	repeat with t in tabs of windows
		tell t
			if URL starts with "http://www.youtube.com" or URL starts with "https://www.youtube.com" then
				execute javascript "
        var player =  document.querySelectorAll('.video-stream.html5-main-video')[0] || document.getElementById('movie_player');
        var next =  document.querySelectorAll('li.yt-uix-scroller-scroll-unit.currently-playing')[0];
        if (player && next) {
          next.nextElementSibling.children[1].click();
        }
        "
				exit repeat
			end if
		end tell
	end repeat
end tell
