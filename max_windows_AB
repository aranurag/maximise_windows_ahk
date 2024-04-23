; Credit goes to Jeff Axelrod (https://stackoverflow.com/users/403455/jeff-axelrod) https://stackoverflow.com/a/9830200/470749
+#Up::
    WinGetActiveTitle, Title
    WinRestore, %Title%  
	SysGet nMonitors, MonitorCount
	SysGet mon1, MonitorWorkArea, 1
	SysGet mon2, MonitorWorkArea, 2
	x      := Min(mon1Left  , mon2Left  )
	y      := Max(mon1Top   , mon2Top   )
	width  := Max(mon1Right , mon2Right ) - x + 1
	height := Min(mon1Bottom, mon2Bottom) - y + 1
    WinMove, %Title%,, x, y, width, height	
return

+#Down::
    WinGetActiveTitle, Title
    WinRestore, %Title%
   WinMove, %Title%,, 0, 0, A_ScreenWidth, A_ScreenHeight
return
