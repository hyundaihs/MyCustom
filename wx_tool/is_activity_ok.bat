set input=%1%
adb shell "dumpsys activity | grep mFocusedActivity" > activity.txt
findstr %input% activity.txt >nul