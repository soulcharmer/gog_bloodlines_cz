Beta verze instalátoru, naskriptované v NSIS:

Požadavky:
- instalátor se zkompiluje spuštěním compile.cmd
- musíte mít nainstalován NSIS ( http://nsis.sourceforge.net/Download ) a jeho přídavný plug-in ( http://nsis.sourceforge.net/FontName_plug-in )
- POZOR FontName plug-in se nainstaluje chybně, je potřeba presunout "NSIS\Plugins\FontName.dll" do "NSIS\Plugins\x86-ansi\"

Instalátor obsahuje:
1. licenční ujednání (license.txt)
2. výběr komponent "Čeština (povinná) a "Rozšíření UP PLUS" (volitelná)
3. autodetekce cesty instalace z registrů s možností procházení
4. automatická instalace českých fontů do systému
