@echo off
:A
Cls
echo MESSENGER
set /p user
set /p m=test
net send %n% %m%
Pause
Goto A