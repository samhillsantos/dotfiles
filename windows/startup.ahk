#Requires AutoHotkey v2.0
#SingleInstance Force

; --- SEÇÃO 1: HOTKEYS ---
^!t::Run("C:\Users\Samuel\scoop\apps\alacritty\current\alacritty.exe")
#Enter::Run("C:\Users\Samuel\scoop\apps\alacritty\current\alacritty.exe")

; ==============================================================================
; --- 2. BOOT SEQUENCIAL ---

; 1. Espera inicial do sistema (HDD respirar)
Sleep(20000)

; 2. Rede (Tailscale com Serviço)
Sleep(2000)
try {
    ; Tenta acordar o serviço (pode falhar se não for admin, mas vale tentar)
    RunWait("sc start Tailscale")
}
Sleep(2000)
if FileExist("C:\Program Files\Tailscale\tailscale-ipn.exe")
    Run("C:\Program Files\Tailscale\tailscale-ipn.exe")

; 3. Controle Remoto
Sleep(2000)
if FileExist("C:\Program Files (x86)\Unified Remote 3\RemoteServerWin.exe")
    Run("C:\Program Files (x86)\Unified Remote 3\RemoteServerWin.exe")

; 4. Utilitários
Sleep(2000)
if FileExist("C:\Users\Samuel\scoop\apps\greenshot\current\Greenshot.exe")
    Run("C:\Users\Samuel\scoop\apps\greenshot\current\Greenshot.exe")

if FileExist("C:\Users\Samuel\scoop\apps\powertoys\current\PowerToys.exe")
    Run ("C:\Users\Samuel\scoop\apps\powertoys\current\PowerToys.exe")

if FileExist("C:\Program Files (x86)\Attack SharkR1Mouse\Mouse.exe")
    Run("C:\Program Files (x86)\Attack SharkR1Mouse\Mouse.exe")

; 5. Background
Sleep(2000)
if FileExist("C:\Program Files\Riot Vanguard\vgtray.exe")
    Run("C:\Program Files\Riot Vanguard\vgtray.exe")