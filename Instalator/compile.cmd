xcopy ..\cestina\bin\*.* ..\instalator\basic\bin\*.* /YS
xcopy ..\cestina\cl_dlls\*.* ..\instalator\basic\Unofficial_patch\cl_dlls\*.* /YS
xcopy ..\cestina\materials\*.* ..\instalator\basic\Unofficial_patch\materials\*.* /YS
xcopy ..\cestina\models\*.* ..\instalator\basic\Unofficial_patch\models\*.* /YS
xcopy ..\cestina\sound\*.* ..\instalator\basic\Unofficial_patch\sound\*.* /YS
xcopy ..\cestina_fontfriendly\*.* ..\instalator\basic\Unofficial_patch\*.* /YS
xcopy ..\UP_Plus\*.* ..\instalator\plus\Unofficial_patch\*.* /YS
xcopy ..\UP_Plus_CZ_fontfriendly\*.* ..\instalator\plus\Unofficial_patch\*.* /YS
rem "C:\Program Files (x86)\nsis\makensis.exe" /V1 script.nsi
rem rd /s/q basic
rem rd /s/q plus


