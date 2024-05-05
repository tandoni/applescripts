-- either run `sudo osascript turn_off_awdl0.applescript` in terminal... OR
-- run `sudo nohup osascript turn_off_awdl0.applescript &` in terminal..
-- don't forget to kill -9 the nohup process when done :) 

on isAwdl0Active()
	try
		set res to do shell script "ifconfig awdl0"
		return (res contains "status: active")
	on error
		return false
	end try
end isAwdl0Active

on disableAwdl0()
	try
		do shell script "ifconfig awdl0 down" with administrator privileges
	on error errMsg
		display dialog "Error: " & errMsg
	end try
end disableAwdl0

on monitor()
	repeat
		if isAwdl0Active() then
			disableAwdl0()
		end if
		delay 10
	end repeat
end monitor

monitor()
