; Windows + F1 activates "High Performance Mode"
; Windows + F2 activates "Balanced Mode"
; Windows + F3 activates "Power Saver Mode"

#F1:: run %comspec% /k powercfg.exe -setactive a1841308-3541-4fab-bc81-f71556f20b4a, , hide
#F2:: run, %comspec% /k powercfg.exe -setactive 381b4222-f694-41f0-9685-ff5bb260df2e, , hide
#F3:: run, %comspec% /k powercfg.exe -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c, , hide