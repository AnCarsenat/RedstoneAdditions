rem Build datapack

rem python "../Generate/v1/generate.py"

rem Copy datapack to datapack folder

echo %CD%

rem remove old datapack folder if it exists (only useful for testing)
rem if exist "..\..\datapack" rmdir /S /Q "..\..\datapack"

if not exist "%CD%\datapack" mkdir "%CD%\datapack"
echo data\placeblocks > exclude.txt
xcopy /E /I /Y "%CD%\datapack" "..\..\datapack" /EXCLUDE:exclude.txt
rem add /EXCLUDE:exclude.txt to exclude files from the copy
