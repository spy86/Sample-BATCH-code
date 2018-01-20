@echo off

echo ================================================
echo ESET NOD32 INSTALL.
echo ================================================
msiexec /i C:\Inst\eavbe_nt64_enu.msi /qb! REBOOT="ReallySuppress" ADMINCFG="nod.xml"

echo Done !
timeout /t 2
exit
