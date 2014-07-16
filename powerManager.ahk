; Windows + F1 activates "Power Saver Mode"
; Windows + F2 activates "Balanced Mode"
; Windows + F3 activates "High Performance Mode"

#F1::
	run %comspec% /k powercfg.exe -setactive a1841308-3541-4fab-bc81-f71556f20b4a, , hide
	SplashTextOn, , , AlwaysOnTop = Power Saver Mode
	Sleep, 750
	SplashTextOff
return
#F2::
	run, %comspec% /k powercfg.exe -setactive 381b4222-f694-41f0-9685-ff5bb260df2e, , hide
	SplashTextOn, , , AlwaysOnTop = Balanced Mode
	Sleep, 750
	SplashTextOff
return
#F3::
	run, %comspec% /k powercfg.exe -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c, , hide
	SplashTextOn, , , AlwaysOnTop = High Performance Mode
	Sleep, 750
	SplashTextOff
return