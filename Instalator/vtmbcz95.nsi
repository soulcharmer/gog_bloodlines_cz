!include FontReg.nsh
!include FontName.nsh
!include WinMessages.nsh

; The name of the installer
Name "Èeštiny pro GOG release Vampire: The Masquerade – Bloodlines UP 9.5"

; The file to write
OutFile "Beta02Cestina_VTMBup95.exe"
Icon "Czech Republic.ico"

; The default installation directory
InstallDir "(instalace hry nenalezena)"

; Registry key to check for directory (so if you install again, it will 
; overwrite the old one automatically)
InstallDirRegKey HKLM "SOFTWARE\WOW6432Node\Activision\Vampire - Bloodlines" InstallPath
InstallDirRegKey HKLM "SOFTWARE\Activision\Vampire - Bloodlines" InstallPath

; Request application privileges for Windows Vista
RequestExecutionLevel admin

;--------------------------------

; Pages

Page license
Page components
Page directory
Page instfiles

;--------------------------------

LoadLanguageFile "${NSISDIR}\Contrib\Language files\Czech.nlf"

LicenseText "LICENCE PRO ÈEŠTINU KE HØE VAMPIRE THE MASQUERADE: BLOODLINES"
LicenseData "licence.txt"

; The stuff to install
Section "Hra a 'Unofficial Patch 9.5 Basic'"

  SectionIn RO
  
  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File /r "basic\Unofficial_patch"
  
    StrCpy $FONT_DIR $FONTS
 
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Copperplate_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Dementation2_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_DomesticManners_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Domination_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Dominican_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Intimidation_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Malkavian_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Persuasion_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Precolator_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Seduction_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Tahoma_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_TimesNewRoman_IS.TTF'
  !insertmacro InstallTTFFont '..\CZ_fonty\VTMB_Trebuchet_IS.TTF'
 
  SendMessage ${HWND_BROADCAST} ${WM_FONTCHANGE} 0 0 /TIMEOUT=5000
 
 
SectionEnd

; Optional section (can be disabled by the user)
Section "Pøídavek 'Unofficial Patch 9.5 PLUS'"

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File /r "plus\Unofficial_patch"
  
SectionEnd