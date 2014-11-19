"tools/cecho" {0A} REFRESHING STATS{#}

set romname=
<<<<<<< HEAD
set romversion=No aroma
set romauthor=No aroma
set romdate=No aroma
set aromaconfig=No aroma
set romlicence=No aroma
set romtheme=No aroma
set romdevice=
set architecture=
=======
set romversion=
set romauthor=
set romdate=
set aromaconfig=
set romdevice=
set architecture=
set romlicence=
set romtheme=
>>>>>>> 04c0b1f956f76f863ba24aa2ff0ad29fc242af16
set initdconfig=
set rootconfig=
set busyboxconfig=
set deodexconfig=
set bitcodeverification=
set installationconfig=
set densityconfig=
set sysrwrobinary=
set insecureramdisk=
set wipedata=
set devicetype=
set wipecache=
set api=
set autobackup=
set dataextraction=
set bootanimation=
set gpurendering=

set /A count=0
<<<<<<< HEAD
=======
FOR %%F IN (tools/config/romsettings/romname/*) DO (
set tmpdata=%%~nF%%~xF
set /A count+=1
)
if %count%==0 goto complete

set tmpdata=
>>>>>>> 04c0b1f956f76f863ba24aa2ff0ad29fc242af16
FOR %%F IN (tools/config/romsettings/romname/*) DO (
set tmpdata=%%~nF%%~xF
set /A count+=1
)
if %count%==0 goto complete

set romname=%tmpdata%
set tmpdata=
FOR %%F IN (tools/config/romsettings/romversion/*) DO (
set tmpdata=%%~nF%%~xF
)

if exist WORKING/system/build.prop (
findstr "ro.product.model=" "WORKING\system\build.prop" >tmp.txt
cscript "tools/sed.vbs" "tmp.txt" "ro.product.model=" "">nul
set /p romdevice=<tmp.txt
del "tmp.txt"
)

if exist "WORKING/META-INF/com/google/android/aroma-config" (
set romversion=%tmpdata%
set tmpdata=
FOR %%F IN (tools/config/romsettings/romauthor/*) DO (
set tmpdata=%%~nF%%~xF
)
set romauthor=%tmpdata%
set tmpdata=
FOR %%F IN (tools/config/romsettings/romdate/*) DO (
set tmpdata=%%~nF%%~xF
)
set romdate=%tmpdata%
set tmpdata=
FOR %%F IN (tools/config/romsettings/romlicense/*) DO (
set tmpdata=%%~nF%%~xF
)
set romlicense=%tmpdata%
set tmpdata=
FOR %%F IN (tools/config/romsettings/aromatheme/*) DO (
set tmpdata=%%~nF%%~xF
)
set romtheme=%tmpdata%
<<<<<<< HEAD
)


if exist WORKING/system/build.prop (
findstr "ro.product.cpu.abi=" "WORKING\system\build.prop" >tmp.txt
cscript "tools/sed.vbs" "tmp.txt" "ro.product.cpu.abi=" "">nul
cscript "tools/sed.vbs" "tmp.txt" "eabi-v6a" "">nul
cscript "tools/sed.vbs" "tmp.txt" "eabi-v7a" "">nul
cscript "tools/sed.vbs" "tmp.txt" "eabi-v8a" "">nul
set /p architecture=<tmp.txt
=======

if exist WORKING/system/build.prop (
findstr "ro.product.cpu.abi=" "WORKING\system\build.prop" >tmp.txt
cscript "tools/sed.vbs" "tmp.txt" "ro.product.cpu.abi=" "">nul
cscript "tools/sed.vbs" "tmp.txt" "eabi-v6a" "">nul
cscript "tools/sed.vbs" "tmp.txt" "eabi-v7a" "">nul
cscript "tools/sed.vbs" "tmp.txt" "eabi-v8a" "">nul
set /p architecture=<tmp.txt
del "tmp.txt"
)

if exist WORKING/system/build.prop (
findstr "ro.build.version.sdk=" "WORKING\system\build.prop" >tmp.txt
cscript "tools/sed.vbs" "tmp.txt" "ro.build.version.sdk=" "">nul
set /p api=<tmp.txt
>>>>>>> 04c0b1f956f76f863ba24aa2ff0ad29fc242af16
del "tmp.txt"
)

if exist WORKING/system/build.prop (
<<<<<<< HEAD
findstr "ro.build.version.sdk=" "WORKING\system\build.prop" >tmp.txt
cscript "tools/sed.vbs" "tmp.txt" "ro.build.version.sdk=" "">nul
set /p api=<tmp.txt
del "tmp.txt"
)

if exist WORKING/system/build.prop (
=======
>>>>>>> 04c0b1f956f76f863ba24aa2ff0ad29fc242af16
findstr "ro.sf.lcd_density=" "WORKING\system\build.prop" >tmp.txt
cscript "tools/sed.vbs" "tmp.txt" "ro.sf.lcd_density=" "">nul
set /p density=<tmp.txt
del "tmp.txt"
)

findstr "dalvik.vm.dexopt-flags=v=n,o=v" "WORKING\system\build.prop" >>tmp.txt || del tmp.txt
if exist tmp.txt (
set bitcodetoggle=x
)
if not exist tmp.txt (
set bitcodetoggle= 
)
del tmp.txt

findstr "debug.sf.hw=1" "WORKING\system\build.prop" >>tmp.txt || del tmp.txt
if exist tmp.txt (
set gpurenderingtoggle= 
)
if not exist tmp.txt (
set gpurenderingtoggle=x
)
del tmp.txt

findstr "debug.sf.nobootanimation=1" "WORKING\system\build.prop" >>tmp.txt || del tmp.txt
if exist tmp.txt (
set bootanimationtoggle= 
)
if not exist tmp.txt (
set bootanimationtoggle=x
)
del tmp.txt

if exist WORKING/META-INF/com/google/android/updater-script (
findstr "set_perm" "WORKING\META-INF\com\google\android\updater-script" >>tmp.txt || del tmp.txt
if exist tmp.txt (
set currentsyntax=set_perm
del "tmp.txt
)
findstr "set_metadata" "WORKING\META-INF\com\google\android\updater-script" >>tmp.txt || del tmp.txt
if exist tmp.txt (
set currentsyntax=set_metadata
del "tmp.txt
)
)

if exist WORKING/system/build.prop (
findstr "ro.product.manufacturer=samsung" "WORKING\system\build.prop" >>tmp.txt || del tmp.txt
if exist tmp.txt (
set devicetype=samsung
del "tmp.txt
)
)

set autobackup=No
if exist "WORKING/tmp/appbackup.sh" (
if exist "WORKING/tmp/apprestore.sh" set autobackup=Yes
)

if exist WORKING/META-INF/com/google/android/aroma (
if exist WORKING/META-INF/com/google/android/aroma-config (
if exist WORKING/META-INF/com/google/android/update-binary (
if exist WORKING/META-INF/com/google/android/update-binary-installer (
set aromaconfig=Yes
)
)
)
)

set installationconfig=No
if exist "META-INF/com/google/android/updater-script" set installationconfig=Pre-installed
if exist "tools/config/romsettings/installationfiles/InstallationToken" set installationconfig=Yes

set dataextraction=No
if exist "WORKING/data" (
if exist "WORKING/META-INF/com/google/android/updater-script" cscript "tools/sed.vbs" "WORKING/META-INF/com/google/android/updater-script" "##DATALINE##" "">nul
set dataextraction=Yes>nul
echo AUTOGENERATED > tools/config/romsettings/dataextraction/ExtractionToken
if exist "tools/config/romsettings/dataextraction/No" del "tools/config/romsettings/dataextraction/No">nul
)

set rootconfig=No
if exist "WORKING/system/xbin/su" (
if exist "WORKING/system/bin/.ext/.su" (
if exist "WORKING/system/etc/.installed_su_daemon" (
if exist "WORKING/system/etc/init.d/99SuperSUDaemon" (
if exist "WORKING/system/xbin/daemonsu" (
set rootconfig=Yes
)
)
)
)
)

set busyboxconfig=No
if exist "WORKING/system/xbin/busybox" set busyboxconfig=Yes

set initdconfig=No
if exist "WORKING/system/etc/init.d" set initdconfig=Possibly
if exist "WORKING/system/bin/debuggerd.real" set initdconfig=Yes

set deodexconfig=No
if not exist WORKING/system/framework/*.odex (
if not exist WORKING/system/app/*.odex (
set deodexconfig=Yes
)
)

set sysrwrobinary=No
if exist "WORKING/system/bin/sysrw" (
if exist "WORKING/system/bin/sysro" (
set sysrwrobinary=Yes
)
)

set insecureramdisk=No
if exist "tools/config/romsettings/insecureramdisk/InsecureToken" set insecureramdisk=Yes

set bitcodeverification=Yes
if exist "tools/config/romsettings/bitcodeverification/BitcodeToken" set bitcodeverification=No

set bootanimation=Yes
if exist "tools/config/romsettings/bootanimation/AnimationToken" set bootanimation=No

set gpurendering=Yes
if exist "tools/config/romsettings/gpurendering/GPUToken" set gpurendering=No

if exist "tools/config/romsettings/wipes/WipedataToken" set wipedata=, data
if exist "tools/config/romsettings/wipes/WipecacheToken" set wipecache=, cache
if exist "tools/config/romsettings/wipes/WipedataToken" if exist "WORKING/META-INF/com/google/android/updater-script" cscript "tools/sed.vbs" "WORKING/META-INF/com/google/android/updater-script" "##WIPELINE1##" "">nul
if exist "tools/config/romsettings/wipes/WipecacheToken" if exist "WORKING/META-INF/com/google/android/updater-script" cscript "tools/sed.vbs" "WORKING/META-INF/com/google/android/updater-script" "##WIPELINE2##" "">nul

if exist WORKING/META-INF/com/google/android/updater-script "tools/dos2unix" -q WORKING/META-INF/com/google/android/updater-script>nul
if exist WORKING/META-INF/com/google/android/aroma-config "tools/dos2unix" -q WORKING/META-INF/com/google/android/aroma-config>nul

:complete