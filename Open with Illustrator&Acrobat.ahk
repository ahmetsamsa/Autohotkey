#If WinActive("ahk_exe Explorer.EXE")

^j::    
    tmp := ClipboardAll
    
    Clipboard := ""
    
    Send ^c
    
    ClipWait
    
    filesList := Clipboard
    
    Clipboard := tmp
    
    for each, file in StrSplit(filesList, "`r`n")
    {
        SplitPath, file, , , ext
    
        if (ext = "pdf" || "eps")
            Run, D:\Adobe Creative Cloud\Adobe Illustrator CC 2018\Support Files\Contents\Windows\Illustrator.exe "%file%"
		
		else if (ext = "pdf")
            Run, D:\Adobe Creative Cloud\Adobe\Acrobat DC\Acrobat\Acrobat.exe "%file%"		
		
        
        else if (ext = "xlsx")
            Run, C:\Program Files (x86)\Microsoft Office\Office16\EXCEL.exe "%file%"
    }
    return
	
	
#If WinActive("ahk_exe Explorer.EXE")

+j::    
    tmp := ClipboardAll
    
    Clipboard := ""
    
    Send ^c
    
    ClipWait
    
    filesList := Clipboard
    
    Clipboard := tmp
    
    for each, file in StrSplit(filesList, "`r`n")
    {
        SplitPath, file, , , ext
    
        if (ext = "pdf")
            Run, D:\Adobe Creative Cloud\Adobe Photoshop CC 2018\Photoshop.exe "%file%"
		
		else if (ext = "pdf")
            Run,D:\Adobe Creative Cloud\Adobe\Acrobat DC\Acrobat\Acrobat.exe "%file%"		
		
        
        else if (ext = "xlsx")
            Run, C:\Program Files (x86)\Microsoft Office\Office16\EXCEL.exe "%file%"
    }
    return
	
	
	