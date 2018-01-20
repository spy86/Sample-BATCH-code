@echo off

echo ================================================
echo Remove duplicate in boot.
echo ================================================

cd C:\Windows\System32\
bcdedit /timeout 0

echo Done !
timeout /t 2
exit