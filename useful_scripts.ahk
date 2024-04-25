;Source: https://www.reddit.com/r/AutoHotkey/comments/lvzqlx/share_your_most_useful_ahk_scripts_my_huge/

;Search selection, Ctrl+Shift+g

^+g::
{
clipboard=
Send, ^c
Sleep 0025
Run, http://www.google.com/search?q=%clipboard%
Return
}



;----------------------------------------------------------------------------
;Always on top, Alt+t

!t::WinSet, AlwaysOnTop, Toggle, A
return



;----------------------------------------------------------------------------
;AutoCorrect 

::}ahk::autohotkey



;----------------------------------------------------------------------------
;Transparency toggle, Scroll Lock
sc046::
toggle:=!toggle
if toggle=1
 {
 WinSet, Transparent, 150, A
 }
else
 {
 WinSet, Transparent, OFF, A
 }
return



;----------------------------------------------------------------------------
;NumPad Shortcuts, Ctrl+NumPad

^NumPad1::
Run,https://www.youtube.com
return

^NumPad2::
Run,https://www.netflix.com/browse
return

^NumPad9::
run, "Notepad.exe"
return

;I have other ones, but you get the idea, just simply running apps or websites



;----------------------------------------------------------------------------
;Chrome Incognito, Pause/Break

Pause::
run, "chrome.exe" -incognito 
return

;Pause/Break key to close the active window
;Pause::WinClose, A

;YouTube Incognito
Pause & Home::
Run "chrome.exe" -incognito "https://www.youtube.com"
return



;----------------------------------------------------------------------------
;Volume control, Alt+Scroll wheel (and Mbutton)

Alt & WheelUp::Volume_Up
Alt & WheelDown::Volume_Down
Alt & MButton::Volume_Mute



;----------------------------------------------------------------------------
;Suspend hotkeys
!s::
suspend, toggle
return



;----------------------------------------------------------------------------
;Fixing/repurposing Fn+function keys

;My keyboard is the Red Dragon Mitra K551

;Fn+F1 sends you to Spotify instead of windows media player
Launch_Media::
Run,Spotify.exe
return

;Fn+F9 sends you to Gmail instead of Outlook
Launch_Mail::
Run, "https://mail.google.com"
return

;Fn+F10 basically does the same thing it did before, mine stopped working, I think
;something to do with the accounts
Browser_Home::
Run, "chrome.exe"
return 

;Fn+F12 sends you to google drive instead of searching (Ctrl+f or even F3 are more
;reliable for searching, at leat on chrome)
Browser_Search::
run, https://drive.google.com/drive
return



;----------------------------------------------------------------------------
;Other random ideas not on my main script
;----------------------------------------------------------------------------

;Emptying recycle bin with a shortcut

^f1::FileRecycleEmpty
return



;----------------------------------------------------------------------------
;Quicker Alt tab, Caps Lock (I mainly used it for quickly switching between half 
;life and a half life guide)

CapsLock::
send {Alt Down}
sleep 0030
send {Tab}
sleep 0010
Send {Alt Up}
return 



;----------------------------------------------------------------------------
;Function keys to maximize and minimize the active window

f7::WinMinimize, A
return

f8::WinMaximize, A
return



;----------------------------------------------------------------------------
;Auto greater and lesser than for html, and since this one sends both, you 
;could make a script that instead of sending greater than, shift+< would send </>,
;as a closing tag

$<::
send, <
sleep 0010
send, >
sleep 0010
send, {Left}
return



;----------------------------------------------------------------------------
;Volume mixer, f7 opens it, if it's not active it recalls it, if its active, 
;it closes it

#MaxThreadsPerHotkey 2
SetTitleMatchMode, 2

F7::
Run, "SndVol.exe" 
return

#IfWinActive Mezclador
	F7::WinClose, A
	return
