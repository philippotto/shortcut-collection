; The code is quite messy, but basically it does the following:
; Windows + Tab switches between all windows of the current window class
; (most of the time this corresponds to all windows of the current application)
; Windows + Alt + {letter} switches between all windows whose title begins with {letter}


#SingleInstance force
DetectHiddenWindows, Off

activateGroup(letter, exception) {
	SetTitleMatchMode, Regex
	StringLower lowerLetter, letter
	StringUpper upperLetter, letter
	regex := "^(" . lowerLetter . "|" . upperLetter . ").*"
	GroupAdd %upperLetter%,%regex%,,,%exception%
	GroupActivate % upperLetter, r
}

#!A::	activateGroup("A", "")
#!B::	activateGroup("B", "")
#!C::	activateGroup("C", "")
#!D::	activateGroup("D", "")
#!E::	activateGroup("E", "")
#!F::	activateGroup("F", "")
#!G::	activateGroup("G", "")
#!H::	activateGroup("H", "")
#!I:: activateGroup("I", "")
#!J::	activateGroup("J", "")
#!K::	activateGroup("K", "")
#!L::	activateGroup("L", "")
#!M::	activateGroup("M", "")
#!N::	activateGroup("N", "")
#!O::	activateGroup("O", "")
#!P::	activateGroup("P", "Program Manager")
#!Q::	activateGroup("Q", "")
#!R::	activateGroup("R", "")
#!S::	activateGroup("S", "StrokeIt|Start")
#!T::	activateGroup("T", "")
#!U::	activateGroup("U", "")
#!V::	activateGroup("V", "")
#!W::	activateGroup("W", "")
#!X::	activateGroup("X", "")
#!Y::	activateGroup("Y", "")
#!Z::	activateGroup("Z", "")


listIndex = 1
#WinActivateForce
#tab::
	Beginning:
	WinGetClass, activeWindowClass,  A
	WinGet,      activeWindowID, ID, A

	; get window list
	WinGet, List, List, ahk_class %activeWindowClass%,, Program Manager

	listIndex++

	if (listIndex > List)
		listIndex = %List%

	Id := List%listIndex%
	if (activeWindowID != Id) {
		WinGetTitle, title, ahk_id %Id%
		if (title) {
			; exclude windows without a size
			WinGetPos,,,W,H,ahk_id %Id%
			if (W AND H) {
				WinActivate, ahk_id %Id%
				return
			}
		}
		WinActivate, ahk_id %Id%
		Goto, Beginning
	}
return

~*LWin::
	; reset index
	KeyWait LWin
	listIndex = 1
return