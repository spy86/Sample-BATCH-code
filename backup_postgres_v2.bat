REM script to backup PostgresSQL databases
@ECHO off

FOR /f "tokens=1-4 delims=/ " %%i IN ("%date%") DO (
      
SET dow=%%i
SET month=%%j
SET day=%%k
SET year=%%l
  )
  
SET datestr=%month%_%day%_%year%
SET db1=db1
SET db2=db1
SET db3=db1
REM SET db4=db1

ECHO datestr is %datestr%
    
SET BACKUP_FILE1=D:\%db1%_%datestr%.sql
SET FIlLENAME1=%db1%_%datestr%.sql

SET BACKUP_FILE2=D:\%db2%_%datestr%.sql
SET FIlLENAME2=%db2%_%datestr%.sql

SET BACKUP_FILE3=D:\%db3%_%datestr%.sql
SET FIlLENAME3=%db3%_%datestr%.sql

SET BACKUP_FILE4=D:\%db14%_%datestr%.sql
SET FIlLENAME4=%db4%_%datestr%.sql
   
  ECHO Backup file name is %FIlLENAME1% , %FIlLENAME2% , %FIlLENAME3% , %FIlLENAME4%
   
   ECHO off
   pg_dump -U postgres -h localhost -p 5432 %db1%  > %BACKUP_FILE1%
   pg_dump -U postgres -h localhost -p 5432 %db2%  > %BACKUP_FILE2%
   pg_dump -U postgres -h localhost -p 5432 %db3%  > %BACKUP_FILE3%
   REM pg_dump -U postgres -h localhost -p 5432 %db4%  > %BACKUP_FILE4%
   
   ECHO DONE !
   