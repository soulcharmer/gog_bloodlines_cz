!include FontReg.nsh
!include FontName.nsh
!include WinMessages.nsh

; The name of the installer
Name "Èeštiny pro GOG release Vampire: The Masquerade – Bloodlines UP 9.5"

; The file to write
OutFile "Beta01Cestina_VTMBup95.exe"
Icon "Vampire-The-Masquerade-Bloodlines-2-16.ico"

; The default installation directory
InstallDir "(instalace hry nenalezena)"

; Registry key to check for directory (so if you install again, it will 
; overwrite the old one automatically)
InstallDirRegKey HKLM "SOFTWARE\WOW6432Node\Activision\Vampire - Bloodlines" InstallPath
InstallDirRegKey HKLM "SOFTWARE\Activision\Vampire - Bloodlines" InstallPath

; Request application privileges for Windows Vista
RequestExecutionLevel admin

CheckBitmap "${NSISDIR}\Contrib\Graphics\Checks\classic-cross.bmp"


;--------------------------------

; Pages

Page license
Page components
Page directory
Page instfiles
Page custom reboot

;--------------------------------

LoadLanguageFile "${NSISDIR}\Contrib\Language files\Czech.nlf"

LicenseText "LICENCE PRO ÈEŠTINU KE HØE VAMPIRE THE MASQUERADE: BLOODLINES"
LicenseData "licence.txt"

; The stuff to install
Section "Pøeklad, textury, fonty"

  SectionIn RO
  
  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File /r "basic\Unofficial_patch"
  
    StrCpy $FONT_DIR $FONTS
 
  !insertmacro InstallTTFFont 'VTMB_Copperplate_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Dementation2_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_DomesticManners_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Domination_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Dominican_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Intimidation_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Malkavian_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Persuasion_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Precolator_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Seduction_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Tahoma_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_TimesNewRoman_IS.TTF'
  !insertmacro InstallTTFFont 'VTMB_Trebuchet_IS.TTF'
 
  SendMessage ${HWND_BROADCAST} ${WM_FONTCHANGE} 0 0 /TIMEOUT=5000
 
 
SectionEnd

; Optional section (can be disabled by the user)
Section "Rozšíøení o Unofficial Patch 9.5 PLUS CZ"

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File /r "plus\Unofficial_patch"
  
SectionEnd

Function reboot
 
  MessageBox MB_YESNO|MB_ICONQUESTION "Instalace písma s diakritikou si vyžaduje restart PC. Restartovat teï?" IDNO +2
  Reboot

 FunctionEnd