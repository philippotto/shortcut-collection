#Enter::Click

#!Up::MouseMove -1, -50, 0, R
+#!Up::MouseMove -1, -10, 0, R

#!Down::MouseMove -1, 50, 0, R
#!+Down::MouseMove -1, 10, 0, R

#!Left::MouseMove -50, -1, 0, R
+#!Left::MouseMove -10, -1, 0, R

#!Right::MouseMove 50, -1, 0, R
#!+Right::MouseMove 10, -1, 0, R

; Window Movement
  ResizeWin(Width = 0, Height = 0)
  {
    WinGetPos,X,Y,W,H,A
    Width := W + Width
    Height := H + Height

    WinMove,A,, %X%, %Y%, %Width%, %Height%
  }

  MoveWin(xOffset = 0,yOffset = 0)
  {
    WinGetPos,X,Y,W,H,A
    Width := W
    Height := H
    X := X + xOffset
    Y := Y + yOffset
    WinMove,A,,%X%, %Y%, %Width%, %Height%
  }

#^Left::MoveWin(-100, 0)
#^Right::MoveWin(100, 0)
#^Up::MoveWin(0, -100)
#^Down::MoveWin(0, 100)

#+^Left::ResizeWin(-100, 0)
#+^Right::ResizeWin(100, 0)
#+^Up::ResizeWin(0, -100)
#+^Down::ResizeWin(0, 100)