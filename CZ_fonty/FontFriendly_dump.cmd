chcp 1250

rd /s/q ..\cestina_fontfriendly
xcopy ..\cestina_1250\cfg\*.* ..\cestina_fontfriendly\cfg\*.* /YS
xcopy ..\cestina_1250\dlg\*.* ..\cestina_fontfriendly\dlg\*.* /YS
xcopy ..\cestina_1250\scripts\*.* ..\cestina_fontfriendly\scripts\*.* /YS
xcopy ..\cestina_1250\sound\*.* ..\cestina_fontfriendly\sound\*.* /YS
xcopy ..\cestina_1250\vdata\*.* ..\cestina_fontfriendly\vdata\*.* /YS
xcopy ..\cestina_ascii\vdata\hackterminals\*.* ..\cestina_fontfriendly\vdata\hackterminals\*.* /YS
del ..\cestina_fontfriendly\*.mp3 /S /F
del ..\cestina_fontfriendly\*.vcd /S /F
del ..\cestina_fontfriendly\*.wav /S /F

"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ä" --replace "‚"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ö" --replace "¬"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "»" --replace "Á"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ë" --replace "«"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ç" --replace "Î"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ù" --replace "À"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "œ" --replace "∞"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ô" --replace "∑"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "“" --replace "˜"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ú" --replace "◊"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "é" --replace "Ó"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "û" --replace "Œ"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ÿ" --replace "‰"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "¯" --replace "ƒ"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ÿ" --replace "Ù"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "˘" --replace "‘"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ã" --replace "ß"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ï" --replace "µ"

"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "¬" --replace "#"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "«" --replace "$"
rem "fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "À" --replace "%%%%"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Œ" --replace "&"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "˝" --replace "*"
rem "fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "·" --replace "+"
rem "fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ì" --replace "/"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "È" --replace "="
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "µ" --replace "@"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ƒ" --replace "]"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "·" --replace "["
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ì" --replace "`"
"fnr.exe" --cl --dir "c:\cygwin64\home\Gamer\gog_bloodlines_cz\cestina_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "‘" --replace "^"

xcopy .\resource\* ..\cestina_fontfriendly\resource\* /YS
xcopy .\strings.txt ..\cestina_fontfriendly\vdata\system\strings.txt /YS