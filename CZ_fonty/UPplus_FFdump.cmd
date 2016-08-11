chcp 1250

xcopy ..\UP_Plus_CZ\cfg\*.* ..\UP_Plus_CZ_fontfriendly\cfg\*.* /YS
xcopy ..\UP_Plus_CZ\dlg\*.* ..\UP_Plus_CZ_fontfriendly\dlg\*.* /YS
xcopy ..\UP_Plus_CZ\scripts\*.* ..\UP_Plus_CZ_fontfriendly\scripts\*.* /YS
xcopy ..\UP_Plus_CZ\sound\*.* ..\UP_Plus_CZ_fontfriendly\sound\*.* /YS
xcopy ..\UP_Plus_CZ\vdata\items\*.* ..\UP_Plus_CZ_fontfriendly\vdata\items\*.* /YS
xcopy ..\UP_Plus_CZ\vdata\signs\*.* ..\UP_Plus_CZ_fontfriendly\vdata\signs\*.* /YS
xcopy ..\UP_Plus_CZ\vdata\system\*.* ..\UP_Plus_CZ_fontfriendly\vdata\system\*.* /YS
del ..\UP_Plus_CZ_fontfriendly\*.mp3 /S /F
del ..\UP_Plus_CZ_fontfriendly\*.vcd /S /F

"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "ä" --replace "‚"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "ö" --replace "¬"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "»" --replace "Á"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "Ë" --replace "«"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "ç" --replace "Î"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "ù" --replace "À"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "œ" --replace "∞"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "Ô" --replace "∑"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "“" --replace "˜"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "Ú" --replace "◊"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "é" --replace "Ó"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "û" --replace "Œ"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "ÿ" --replace "‰"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "¯" --replace "ƒ"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "Ÿ" --replace "Ù"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "˘" --replace "‘"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "Ã" --replace "ß"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "Ï" --replace "µ"

"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "¬" --replace "#"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "«" --replace "$"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "À" --replace "%"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "Œ" --replace "&"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "˝" --replace "*"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "·" --replace "+"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "Ì" --replace "/"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "È" --replace "="
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "µ" --replace "@"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "ƒ" --replace "]"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "∑" --replace "["
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "◊" --replace "`"
"fnr.exe" --cl --dir "c:\cygwin64\home\VLK\gog_bloodlines_cz\UP_Plus_CZ_fontfriendly\sound" --fileMask "*.*" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --caseSensitive --showEncoding --alwaysUseEncoding "windows-1250" --find "‘" --replace "^"

xcopy .\hackterminals\* ..\UP_Plus_CZ_fontfriendly\vdata\hackterminals\* /YS
xcopy .\resourceplus\* ..\UP_Plus_CZ_fontfriendly\resource\* /YS
xcopy .\stringsplus.txt ..\UP_Plus_CZ_fontfriendly\vdata\system\strings.txt /YS