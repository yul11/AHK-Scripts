y=0
loop
{
	if WinExist("ahk_exe xplorer2_64.exe"){
		WinActivate, ahk_exe xplorer2_64.exe
		WinMove, -2554, 1055
		WinSet, Transparent, 100
		WinActivate, ahk_exe xplorer2_64.exe
		Sleep, 200
		WinSet, Transparent, 255
		WinActivate, ahk_exe xplorer2_64.exe
		Sleep, 200
	}
	else{	
		Run, xplorer2_64.exe, P:\Explorer2
		Sleep, 2000
	}
	y++
	if (y=3)
	{
		break
	}
}


x=0
loop
{
	if WinExist("ahk_exe notepad++.exe"){
		WinActivate, ahk_exe notepad++.exe
		WinMove, -2554, 0
		WinSet, Transparent, 100
		WinActivate, ahk_exe xplorer2_64.exe
		Sleep, 200
		WinSet, Transparent, 255
		WinActivate, ahk_exe xplorer2_64.exe
		Sleep, 200
	}
	else{	
		Run, notepad++.exe, P:\Notepad++
		Sleep, 2000
	}
	x++
	if (x=3)
	{
		break
	}
}


XButton1::
{
	Send {Alt down}{Tab}
	Sleep, 4000
	Send {Alt up}{Tab}
}	



		::mfg::Mit freundlichen Grüßen {enter}Jürgen Obermeier {enter}Kiefernstr. 10 {enter}86567 Tandern

~Numpad0 & Numpad1::
MsgBox, computer will go into suspend-mode now
DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0)
return

~Numpad0 & Numpad2::
MsgBox, computer will go into hibernate-mode now
DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
return

~Numpad0 & Numpad3::
MsgBox, computer will power down now
Shutdown, 8
return

~Numpad0 & Numpad7::
MsgBox, computer will force a restart now
Shutdown, 6
return

~Numpad0 & NumpadEnter::
Send !{F4} 
return

^NumpadEnter::
Send !{F4} 
return

^Escape::
Send !{F4} 
return

!Escape::
Send !{F4} 
return

^j::
Send, My First Script
return

::ftw::Free the whales

~Numpad0 & Numpad9:: Winset, Alwaysontop, TOGGLE, A

WinGet, a, ID, ahk_class ConsoleWindowClass
FileAppend, %a%`n, D:\testing.txt
