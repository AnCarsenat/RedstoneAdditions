rem Build datapack

rem python "../Generate/v1/generate.py"

rem Copy datapack to DevWorld datapacks folder
echo Current directory: %CD%

rem Create destination folder if it doesn't exist
if not exist "C:\Users\antoi\AppData\Roaming\.minecraft\saves\DevWorld\datapacks\datapack" mkdir "C:\Users\antoi\AppData\Roaming\.minecraft\saves\DevWorld\datapacks\datapack"

rem Create exclude file
echo  > exclude.txt
echo data\placeblocks\predicates\ >> exclude.txt
echo data\placeblocks\tags\ >> exclude.txt
echo data\placeblocks\function\place_current\ >> exclude.txt
echo data\placeblocks\predicate\ >> exclude.txt


rem Copy datapack files to destination
xcopy /E /I /Y "%CD%\datapack\*" "C:\Users\antoi\AppData\Roaming\.minecraft\saves\DevWorld\datapacks\datapack" /EXCLUDE:exclude.txt

rem Clean up exclude file
del exclude.txt
