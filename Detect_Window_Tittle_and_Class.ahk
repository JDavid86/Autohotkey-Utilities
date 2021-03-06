; ###########################################
; #####	    DETECTAR TITULO Y CLASS	#####
; ###########################################
; UTILIDADES: Detecta el Titulo y Class Code de la ventana Presionando CTRL + D
#Persistent
#SingleInstance Force

; SIMPLE OSD: On-screen display:
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, c20f02
Gui, Font, s10  ; Set a large font size (32-point).
Gui, Add, Text, vMyText w140 cWhite Center, Ctrl+D=Run `n MButton=ExitApp
Gui, Show, NoActivate  ; NoActivate avoids deactivating the currently active window.
WinMove, 1650, 0

;------------------------------------------------------------------------------
; Detectar Class y Titulo Ventana
^d:: ; INFO Completa de Ventana
	WinGetClass, class, A
	WinGetTitle, Title, A
	clipboard = %Title%, %class%
	Msgbox, 64, , 
(
El titulo de la ventana es:
%Title% `n
El Class code de la ventana es:
%class%
), 8
return
;------------------------------------------------------------------------------

MButton::
Esc::
ExitApp
