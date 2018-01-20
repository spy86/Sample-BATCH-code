set file="C:\AnalyzerCheck\loaded.txt"
set minbytesize=0
if exist %file% (
FOR /F "usebackq" %A IN ('%file%') DO set size=%~zA
if %size% GTR %minbytesize% (
    //do stuff
) else (
    //do stuff
)