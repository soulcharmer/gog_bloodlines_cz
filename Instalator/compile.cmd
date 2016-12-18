xcopy ..\cestina\materials\*.* ..\instalator\basic\Unofficial_patch\materials\*.* /YS
xcopy ..\cestina\models\*.* ..\instalator\basic\Unofficial_patch\models\*.* /YS
xcopy ..\cestina\sound\*.* ..\instalator\basic\Unofficial_patch\sound\*.* /YS
xcopy ..\cestina_fontfriendly\*.* ..\instalator\basic\Unofficial_patch\*.* /YS
xcopy ..\UP_Plus\*.* ..\instalator\plus\Unofficial_patch\*.* /YS
xcopy ..\UP_Plus_CZ_fontfriendly\*.* ..\instalator\plus\Unofficial_patch\*.* /YS
"C:\Program Files (x86)\nsis\makensis.exe" /V1 vtmbcz96.nsi
rd /s/q basic
rd /s/q plus


