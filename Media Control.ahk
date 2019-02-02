#If MouseIsOver("ahk_class Shell_TrayWnd")
WheelUp::Send {Media_Next}
WheelDown::Send {Media_Prev}
^WheelUp::Send {Volume_Up}
^WheelDown::Send {Volume_Down}

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}