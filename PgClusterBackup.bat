:: Set variables
set dbuser=postgres
set backuptime=%DATE:~7,2%%DATE:~4,2%%DATE:~10,4%
set PGPASSWORD=postgres
set dbnames=db,db2,db3,db4

FOR %%i IN (%dbnames%) DO (
"C:\Program Files (x86)\pgAdmin III\1.18\pg_dump.exe" -h 127.0.0.1 -U %dbuser% -d %%i -f "G:\BACKUP\%%i.%backuptime%.sql"
)

"C:\Program Files (x86)\7-Zip\7z.exe" a -tzip "F:\BACKUP\FullBackup.%backuptime%.zip" "F:\BACKUP\*.sql"

del "G:\BACKUP\*.sql"

Forfiles -p F:\BACKUP\ -s -m *.* -d -30 -c "cmd /c del /q @path"