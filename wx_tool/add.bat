set input=%1%
echo ��� %input%
adb shell input tap 1005 145
echo �����
adb shell input tap 400 145
call handle_tel.bat %input%
echo %phone_1% %phone_2% %phone_3% %phone_4% %phone_5% %phone_6% %phone_7% %phone_8% %phone_9% %phone_10% %phone_11%
echo ��ʼ����
adb shell input keyevent %phone_1% %phone_2% %phone_3% %phone_4% %phone_5% %phone_6% %phone_7% %phone_8% %phone_9% %phone_10% %phone_11%

echo �������
adb shell input keyevent 66

call sleep.bat 3

call is_activity_ok.bat ContactInfoUI
if %errorlevel% NEQ 0 goto back

echo ��ӵ�ͨѶ¼
adb shell input tap 545 880

call sleep.bat 3
call is_activity_ok.bat SayHiWithSnsPermissionUI
if %errorlevel% NEQ 0 goto back

echo ����
adb shell input tap 960 145

echo 60���ٴ����
call sleep.bat 60
call is_activity_ok.bat ContactInfoUI
if %errorlevel% NEQ 0 goto back

adb shell input keyevent 4

:back
call check_activity.bat
goto end

:end

