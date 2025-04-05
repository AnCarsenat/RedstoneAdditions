rem Build datapack

python "../Generate/v1/generate.py"

rem Copy datapack to datapack folder

echo %CD%

rem remove old datapack folder if it exists
if exist "..\..\datapack" rmdir /S /Q "..\..\datapack"

if not exist "%CD%\datapack" mkdir "%CD%\datapack"
echo data\placeblocks > exclude.txt
xcopy /E /I /Y "%CD%\datapack" "..\..\datapack" /EXCLUDE:exclude.txt
