echo off
set appName=wchat.apk
set pkgName=com.tencent.mm
set openName=com.tencent.mm.ui.LauncherUI
set "times=%1"
echo ´ò¿ª
adb shell "am start -n %pkgName%/%openName%"

call check_activity.bat

call sleep.bat 5
for /f "delims=," %%i in (contacts.txt) do call add.bat %%i

pause