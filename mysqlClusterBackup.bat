:: Set variables
set dbuser=root
set dbpass=root_123
set backuptime=%DATE:~7,2%%DATE:~4,2%%DATE:~10,4%
set errorLogPath="G:\BACKUP\errors.txt"

:: Path to MySQL data directory
pushd "\\127.0.0.1\J$\MySQL Data"

FOR /D %%F IN (*) DO (
IF NOT [%%F]==[performance_schema] (
SET %%F=!%%G:@002d=-!
"C:\scripts\mysqldump.exe" --host=127.0.0.1 --user=%dbuser% --password=%dbpass% --databases --routines --log-error=%errorLogPath%  %%F > "G:\BACKUP\%%F.%backuptime%.sql"
) ELSE (
echo Skipping DB backup for performance_schema
)
)

popd

"C:\Program Files (x86)\7-Zip\7z.exe" a -tzip "G:\BACKUP\FullBackup.%backuptime%.zip" "G:\BACKUP\*.sql"

del "G:\BACKUP\*.sql"

Forfiles -p G:\BACKUP\ -s -m *.* -d -30 -c "cmd /c del /q @path"