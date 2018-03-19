@echo off
echo Checking connection 192.168.1.12
ping -n 1 192.168.1.12 >nul
if errorlevel 1 (
  cls
  echo Failed

)

cls
echo Success!

