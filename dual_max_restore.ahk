; Credit goes to Jeff Axelrod (https://stackoverflow.com/users/403455/jeff-axelrod) https://stackoverflow.com/a/9830200/470749 https://www.autohotkey.com/boards/viewtopic.php?p=545544
#Persistent
#SingleInstance Force

+#Up::
WinGetActiveTitle, Title
WinGetPos, originalX, originalY, originalWidth, originalHeight, A ; Get original window position and size

SysGet, nMonitors, MonitorCount
SysGet, mon1, MonitorWorkArea, 1
SysGet, mon2, MonitorWorkArea, 2
x := min(mon1Left, mon2Left)
y := max(mon1Top, mon2Top)
width := max(mon1Right, mon2Right) - x
height := min(mon1Bottom, mon2Bottom) - y
WinMove, %Title%,, x, y, width, height

return

+#Down::
WinGetActiveTitle, Title
WinMove, %Title%,, 0, 0, originalWidth, originalHeight

return
