set tel=%1%
echo tel %tel%
set /a tmp =  %tel:~0,1%
call translant.bat %tmp%
set /a phone_1 = %res%

set /a tmp =  %tel:~1,1%
call translant.bat %tmp%
set /a phone_2 = %res%

set /a tmp =  %tel:~2,1%
call translant.bat %tmp%
set /a phone_3 = %res%

set /a tmp =  %tel:~3,1%
call translant.bat %tmp%
set /a phone_4 = %res%

set /a tmp =  %tel:~4,1%
call translant.bat %tmp%
set /a phone_5 = %res%

set /a tmp =  %tel:~5,1%
call translant.bat %tmp%
set /a phone_6 = %res%

set /a tmp =  %tel:~6,1%
call translant.bat %tmp%
set /a phone_7 = %res%

set /a tmp =  %tel:~7,1%
call translant.bat %tmp%
set /a phone_8 = %res%

set /a tmp =  %tel:~8,1%
call translant.bat %tmp%
set /a phone_9 = %res%

set /a tmp =  %tel:~9,1%
call translant.bat %tmp%
set /a phone_10 = %res%

set /a tmp =  %tel:~10,1%
call translant.bat %tmp%
set /a phone_11 = %res%
