; ######################################## Global Functions ########################################
#SingleInstance force
Menu, Tray, Tip, Shortcut Collection

#include windowSwitcher.ahk
#include cursorNavigator.ahk
#include powerManager.ahk
#include mouseAndWindowMover.ahk
#include numpadExtender.ahk

#+r::reload
#+e::edit

; Auto-Reload AutoHotKey when this file is saved
~+^s::
	SetTitleMatchMode 2
	IfWinActive, %A_ScriptName%
	{
		Send, ^s
		SplashTextOn,,,Updated script,
		Sleep, 200
		SplashTextOff
		Reload
	}
	else
		Send, ^s
return