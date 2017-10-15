echo ¼ì²éÒ³Ãæ
:start
adb shell "dumpsys activity | grep mFocusedActivity" > activity.txt

findstr "FTSAddFriendUI" activity.txt >nul
if %errorlevel% EQU 0 goto FTSAddFriendUI

findstr "AddMoreFriendsUI" activity.txt >nul
if %errorlevel% EQU 0 goto AddMoreFriendsUI

findstr "ContactInfoUI" activity.txt >nul
if %errorlevel% EQU 0 goto ContactInfoUI

findstr "SayHiWithSnsPermissionUI" activity.txt >nul
if %errorlevel% EQU 0 goto SayHiWithSnsPermissionUI

findstr "FMessageConversationUI" activity.txt >nul
if %errorlevel% EQU 0 goto FMessageConversationUI

findstr "LauncherUI" activity.txt >nul
if %errorlevel% EQU 0 goto LauncherUI

findstr "ContactMoreInfoUI" activity.txt >nul
if %errorlevel% EQU 0 goto ContactMoreInfoUI

adb shell input keyevent 4
goto start

:ContactMoreInfoUI
echo ContactMoreInfoUI
adb shell input keyevent 4
adb shell input keyevent 4
goto is_ok

:LauncherUI
echo LauncherUI
adb shell input tap 420 1700
adb shell input tap 1060 240
adb shell input tap 540 300
goto is_ok

:FMessageConversationUI
echo FMessageConversationUI
adb shell input tap 950 150
goto is_ok

:SayHiWithSnsPermissionUI
echo SayHiWithSnsPermissionUI
adb shell input keyevent 4
goto is_ok

:ContactInfoUI
echo ContactInfoUI
adb shell input keyevent 4
goto is_ok

:AddMoreFriendsUI
echo AddMoreFriendsUI
adb shell input tap 355 355
goto is_ok

:FTSAddFriendUI
echo FTSAddFriendUI
goto is_ok

:is_ok
call is_activity_ok.bat FTSAddFriendUI
if %errorlevel% EQU 0 (
	goto end
) else (
	goto start
)

:end