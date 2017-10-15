@echo off
for /f "delims=," %%i in (activity.txt) do echo %%i
pause