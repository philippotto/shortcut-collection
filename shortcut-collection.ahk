; ######################################## Global Functions ########################################
#SingleInstance force
SetCapsLockState, AlwaysOff
Menu, Tray, Tip, Shortcut Collection

#+r::
	SplashTextOn, , , Reload in 500ms
	Sleep, 500
	SplashTextOff
	reload
return

#+e::edit

#include windowSwitcher.ahk
#include cursorNavigator.ahk
#include powerManager.ahk
#include mouseAndWindowMover.ahk
#include numpadExtender.ahk


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