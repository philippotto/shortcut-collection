; The code is quiet messy, but basically it does the following:
; Windows + Tab switches between all windows of the current window class (most of the time this corresponds to all windows of the current application)
; Windows + Alt + {letter} switches between all windows whose title begins with {letter}


#SingleInstance force
DetectHiddenWindows, Off

theList = 1

SetTitleMatchMode, RegEx

GroupAdd As,(^A.*)|(^a.*),,,
GroupAdd Bs,(^B.*)|(^b.*),,,
GroupAdd Cs,(^C.*)|(^c.*),,,
GroupAdd Ds,(^D.*)|(^d.*),,,
GroupAdd Es,(^E.*)|(^e.*),,,
GroupAdd Fs,(^F.*)|(^f.*),,,
GroupAdd Gs,(^G.*)|(^g.*),,,
GroupAdd Hs,(^H.*)|(^h.*),,,
GroupAdd Is,(^I.*)|(^i.*),,,
GroupAdd Js,(^J.*)|(^j.*),,,
GroupAdd Ks,(^K.*)|(^k.*),,,
GroupAdd Ls,(^L.*)|(^l.*),,,
GroupAdd Ms,(^M.*)|(^m.*),,,
GroupAdd Ns,(^N.*)|(^n.*),,,
GroupAdd Os,(^O.*)|(^o.*),,,
GroupAdd Ps,(^P.*)|(^p.*),,,Program Manager
GroupAdd Qs,(^Q.*)|(^q.*),,,
GroupAdd Rs,(^R.*)|(^r.*),,,
GroupAdd Ss,(^S.*)|(^s.*),,,StrokeIt|Start
GroupAdd Ts,(^T.*)|(^t.*),,,
GroupAdd Us,(^U.*)|(^u.*),,,
GroupAdd Vs,(^V.*)|(^v.*),,,
GroupAdd Ws,(^W.*)|(^w.*),,,
GroupAdd Xs,(^X.*)|(^x.*),,,
GroupAdd Ys,(^Y.*)|(^y.*),,,
GroupAdd Zs,(^Z.*)|(^z.*),,,

; GroupAdd Consoles, ahk_class ConsoleWindowClass

#!A::	GroupActivate As, r
#!B::	GroupActivate Bs, r
#!C::	GroupActivate Cs, r
#!D::	GroupActivate Ds, r
#!E::	GroupActivate Es, r
#!F::	GroupActivate Fs, r
#!G::	GroupActivate Gs, r
#!H::	GroupActivate Hs, r
#!I::	GroupActivate Is, r
#!J::	GroupActivate Js, r
#!K::	GroupActivate Ks, r
#!L::	GroupActivate Ls, r
#!M::	GroupActivate Ms, r
#!N::	GroupActivate Ns, r
#!O::	GroupActivate Os, r
#!P::	GroupActivate Ps, r
#!Q::	GroupActivate Qs, r
#!R::	GroupActivate Rs, r
#!S::	GroupActivate Ss, r
#!T::	GroupActivate Ts, r
#!U::	GroupActivate Us, r
#!V::	GroupActivate Vs, r
#!W::	GroupActivate Ws, r
#!X::	GroupActivate Xs, r
#!Y::	GroupActivate Ys, r
#!Z::	GroupActivate Zs, r


#WinActivateForce
#tab::
	Beginning:
	WinGetClass, activeWindowClass,  A
	WinGet,      activeWindowID, ID, A

	WinGet, List, List, ahk_class %activeWindowClass%,, Program Manager				; get window list

	theList++

	if (theList > List)
		theList = %List%

	  Id := List%theList%											; get the actual id
	  if (activeWindowID != Id)											; if current loop item is not the active window
	  {
		  WinGetTitle, title, ahk_id %Id%
		  if (title)
		  {
				WinGetPos,,,W,H,ahk_id %Id%								; exclude windows without a size
				if (W AND H)
				{
					WinActivate, ahk_id %Id%
					return
				}
		  }
		  WinActivate, ahk_id %Id%
		  Goto, Beginning
	}
return

~*LWin::
	KeyWait LWin
	theList = 1
return