#NoTrayIcon
#NoEnv
#UseHook On
#SingleInstance force
SendMode Input
DetectHiddenWindows, on
SetWinDelay, 0

;------------------------------------------------------------------
; Funcoes
;------------------------------------------------------------------

; Funcao que verifica se o Remote Desktop esta ativo
IsWVDActive() {
    return (WinActive("ahk_exe msrdc.exe"))	
}

; Funcao que verifica se o Remote Desktop existe
IsWVDExist() {
    return (WinExist("ahk_exe msrdc.exe"))	
}

; Funcao que verifica se o explorer esta ativo
IsWVDExplorer() {
    return (WinActive("ahk_exe explorer.exe"))	
}

;------------------------------------------------------------------
; Atalhos
;------------------------------------------------------------------

; SnippingTool
+PrintScreen::
	process_id := WinExist("ahk_exe SnippingTool.exe")
	if (terminal) { 
		WinClose, ahk %process_id%
	}
	run "C:\Windows\system32\SnippingTool.exe"
	Sleep 200
	Send ^n
return

; Windows Terminal
^!t::
    terminal := WinExist("ahk_exe WindowsTerminal.exe")
    if (terminal) 
    {
        active := WinActive("ahk_id " terminal)
        if (active)
            WinMinimize, ahk_id %active%
        else
            WinActivate, ahk_id %terminal%
    }
    else
        Run, wt.exe
Return

; Minimiza e Maximiza o Remote Desktop
^+CapsLock::
    if(IsWVDActive()){
        WinMinimize
    } else {
        if  (IsWVDExist()) {
            WinRestore, Personal Desktop
        }
    }
Return

; Termina o processo do programa
#q::
    if !(IsWVDExplorer()){ 
        WinGet, active_id, PID, A
        run, taskkill /PID %active_id% /F,,Hide
    }	
return