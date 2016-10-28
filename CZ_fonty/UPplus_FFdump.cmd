chcp 1250

rd /s/q ..\UP_Plus_CZ_fontfriendly
xcopy ..\UP_Plus_CZ\cfg\*.* ..\UP_Plus_CZ_fontfriendly\cfg\*.* /YS
xcopy ..\UP_Plus_CZ\dlg\*.* ..\UP_Plus_CZ_fontfriendly\dlg\*.* /YS
xcopy ..\UP_Plus_CZ\scripts\*.* ..\UP_Plus_CZ_fontfriendly\scripts\*.* /YS
xcopy ..\UP_Plus_CZ\sound\*.* ..\UP_Plus_CZ_fontfriendly\sound\*.* /YS
xcopy ..\UP_Plus_CZ\vdata\items\*.* ..\UP_Plus_CZ_fontfriendly\vdata\items\*.* /YS
xcopy ..\UP_Plus_CZ\vdata\signs\*.* ..\UP_Plus_CZ_fontfriendly\vdata\signs\*.* /YS
xcopy ..\UP_Plus_CZ\vdata\system\*.* ..\UP_Plus_CZ_fontfriendly\vdata\system\*.* /YS
del ..\UP_Plus_CZ_fontfriendly\*.mp3 /S /F
del ..\UP_Plus_CZ_fontfriendly\*.vcd /S /F

"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ä" --replace "‚"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ö" --replace "¬"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "»" --replace "Á"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ë" --replace "«"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ç" --replace "Î"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ù" --replace "À"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "œ" --replace "∞"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ô" --replace "∑"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "“" --replace "˜"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ú" --replace "◊"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "é" --replace "Ó"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "û" --replace "Œ"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ÿ" --replace "‰"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "¯" --replace "ƒ"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ÿ" --replace "Ù"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "˘" --replace "‘"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ã" --replace "ß"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ï" --replace "µ"

"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "¬" --replace "#"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "«" --replace "$"
rem "fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "À" --replace "%%%%"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Œ" --replace "&"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "˝" --replace "*"
rem "fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "·" --replace "+"
rem "fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ì" --replace "/"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "È" --replace "="
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "µ" --replace "@"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "ƒ" --replace "]"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "·" --replace "["
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "Ì" --replace "`"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --silent --find "‘" --replace "^"

xcopy .\hackterminals\* ..\UP_Plus_CZ_fontfriendly\vdata\hackterminals\* /YS
xcopy .\resourceplus\* ..\UP_Plus_CZ_fontfriendly\resource\* /YS
xcopy .\stringsplus.txt ..\UP_Plus_CZ_fontfriendly\vdata\system\strings.txt /YS