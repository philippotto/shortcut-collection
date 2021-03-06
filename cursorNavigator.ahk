SetCapsLockState, AlwaysOff

Esc::Esc
CapsLock & i::
	SendPlay, {NumpadUp}
	if getkeystate("alt") = 1
		Send,+{Up}
	else
		Send,{Up}
return

#i::Click WheelUp


CapsLock & l::
	if getkeystate("alt") = 0
		Send,{Right}
	else
		Send,+{Right}
return

CapsLock & j::
	if getkeystate("alt") = 0
		Send,{Left}
	else
		Send,+{Left}
return

CapsLock & k::
	if getkeystate("alt") = 1
		Send,+{Down}
	else
		Send,{Down}
return

CapsLock & 9::Click WheelUp
CapsLock & 0::Click WheelDown

Capslock & 7::Send, ^{PgUp}
Capslock & 8::Send, ^{PgDn}

; ä
CapsLock & SC028::
	if getkeystate("alt") = 0
		SendInput, {Left 8}
	else
		SendInput, +{Left 8}
return

; #
CapsLock & SC02B::
	if getkeystate("alt") = 0
		SendInput, {Right 8}
	else
		SendInput, +{Right 8}
return

#k::
	Click WheelDown
return

; Capslock & .::
; 	if getkeystate("alt") = 0
; 		Send,^{Up}
; 	else
; 		Send,+^{Up}
; return

Capslock & -::
	if getkeystate("alt") = 0
		Send,^{Down}
	else
		Send,+^{Down}
return


CapsLock & u::
	if getkeystate("alt") = 0
		Send,{Home}
	else
		Send,+{Home}
return

CapsLock & o::
	if getkeystate("alt") = 0
		Send,{End}
	else
		Send,+{End}
return

CapsLock & z::
	if getkeystate("alt") = 0
		Send,^{Home}
	else
		Send,+^{Home}
return

CapsLock & p::
	if getkeystate("alt") = 0
		Send,^{End}
	else
		Send,+^{End}
return

CapsLock & H::
	if getkeystate("alt") = 0
		Send,^{Left}
	else
		Send,+^{Left}
return

; ö
;Capslock & SC027::
Capslock & SC027::
	if getkeystate("alt") = 0
		Send,^{Right}
	else
		Send,+^{Right}
return

CapsLock & BS::
	if getkeystate("alt") = 0
		Send,{Del}
	else
		Send,^{Del}
return

CapsLock & b::Send ^x
CapsLock & n::Send ^c
CapsLock & m::Send ^v

Capslock & a::Send ^a
Capslock & f::
	if getkeystate("alt") = 0
		Send ^f
	else
		Send ^+f
return

Capslock & r::
	if getkeystate("alt") = 0
		Send ^r
	else
		Send ^+r
return

Capslock & d::Send ^d
Capslock & w::Send ^w

; Prevents CapsState-Shifting
CapsLock & Space::Send,{Space}

*Capslock::SetCapsLockState, AlwaysOff
+Capslock::SetCapsLockState, On
^+Capslock::SetCapsLockState, Off

CapsLock & g::
	Send ^g
return

CapsLock & Tab::
	if getkeystate("alt") = 0
		Send ^{tab}
	else
		Send ^+{tab}
return