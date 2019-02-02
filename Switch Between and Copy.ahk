#Persistent

#If WinActive("ahk_exe EXCEL.EXE") || WinActive("ahk_exe Illustrator.exe") || WinActive("ahk_exe Photoshop.exe") || WinActive("ahk_exe FOXITPHANTOMPDF.EXE") || WinActive("ahk_exe Acrobat.exe") || WinActive("ahk_exe POWERPNT.EXE")
~^c::
    ClipWait
    Sleep, 50
WinActivate, ahk_exe indesign.exe
Return

#If WinActive("ahk_exe indesign.exe")
~^v::
    Sleep, 250
    Clipboard :=
Return
#If
+F2::WinActivate, % (WinActive("ahk_exe Photoshop.exe"))?"ahk_class indesign":"ahk_exe Photoshop.exe"
+F3::WinActivate, % (WinActive("ahk_exe Illustrator.exe"))?"ahk_class indesign":"ahk_exe Illustrator.exe"
F4::WinActivate, % (WinActive("ahk_class XLMAIN"))?"ahk_class indesign":"ahk_class XLMAIN"
+F4::WinActivate, % (WinActive("ahk_exe Acrobat.exe"))?"ahk_class indesign":"ahk_exe Acrobat.exe"
+F6::WinActivate, % (WinActive("ahk_exe POWERPNT.EXE"))?"ahk_class indesign":"ahk_exe POWERPNT.EXE"

Return
F6::Run cmd /c   echo off. | clip
F7::Process,Close, EXCEL.EXE
F8::
    ControlClick, , ahk_exe Illustrator.exe, , , , NA
    ControlSend, , ^w, ahk_exe Illustrator.exe
    ControlSend, , Enter, ahk_exe Illustrator.exe
	return
    