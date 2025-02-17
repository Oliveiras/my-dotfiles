#Requires AutoHotkey v2.0
#SingleInstance

CapsLock & ç::Esc
CapsLock & h::Left
CapsLock & j::Down
CapsLock & k::Up
CapsLock & l::Right
CapsLock & z::^z
CapsLock & x::^x
CapsLock & c::^c
CapsLock & v::^v

CapsLock & b:: {
    Send "curl https://raw.githubusercontent.com/Oliveiras/my-dotfiles/refs/heads/master/scripts/get-dotfiles.sh | bash"
}


;; OLD CODE
;; Keyboard Modes
;; 1: Normal Caps behavior
;; 2: Caps is Esc
;global KbMode := 2
;
;; Handling Caps based on KbMode
;CapsLock:: {
;    if GetKeyState("Shift", "p") {
;        SendInput("{CapsLock}")
;    } else if (KbMode = 1) {
;        SetCapsLockState !GetKeyState("CapsLock", "T")
;        ;MsgBox(KbMode, "KbMode", "T0.5")
;    } else if (KbMode = 2) {
;        SendInput("{Esc}")
;    } else {
;        return
;    }
;}
;
;; Switching KbMode
;CapsLock & 1:: {
;    global KbMode := 1
;    MsgBox("Keyboard layout: " . KbMode, "AutoHotkey", "T0.5")
;}
;CapsLock & 2:: {
;    global KbMode := 2
;    MsgBox("Keyboard layout: " . KbMode, "AutoHotkey", "T0.5")
;}
