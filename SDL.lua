SDL={}
function SDL.pollEvent()

	return event
end

--keyboard and kempston joystic emulator, 0..1 values for driving

--logger.info("read_keyboard: port: %02x %s", port_high, cpu.tstates)
	-- Map cetain key combinations to ease the usage
	-- If Backspace is pressed -> LeftShift + 0 are simulated
	-- If Capslock is pressed -> LeftShift + 2 are simulated
	-- If cursor Up is pressed -> LeftShift + 7 are simulated
	-- If cursor Down is pressed -> LeftShift + 6 are simulated
	-- If cursor Left is pressed -> LeftShift + 5 are simulated
	-- If cursor Right is pressed -> LeftShift + 8 are simulated
SDL.scancode={
	Up=0,
	Down=0,
	Left=0, 
	Right=0,
	LeftControl=0,
	RightControl=0,
	LeftShift=0,
	Backspace=0,
	CapsLock=0,
	Z=0,X=0,C=0,V=0,
	A=0,S=0,D=0,F=0,G=0,
	Q=0,W=0,E=0,R=0,T=0,
	'1'=0,'2'=0,'3'=0,'4'=0,'5'=0,
	'0'=0,'9'=0,'8'=0,'7'=0,'6'=0,
	P=0,O=0,I=0,U=0,Y=0,
	Return=0,L=0,K=0,J=0,H=0,
	Space=0,RightShift=0,M=0,N=0,B=0

}

function SDL.getKeyboardState()

	return keys 
end


function SDL.createRenderer(string,num1,num2)--win, 0, 1

	return rdr, err
end

function SDL.createWindow({ title = "LuaGleck", height = 192 + 64 + 56, width = 256 + 48 + 48,
									--flags = { SDL.window.Resizable }
									--flags	= { SDL.flags.OpenGL, SDL.window.Resizable }
								  })
	return win,err
end


function SDL.init({ SDL.flags.Video, SDL.flags.Events })

end
