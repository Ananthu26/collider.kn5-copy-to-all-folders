@echo off
set "SOURCE_FILE=collider.kn5"

for /d %%F in (*) do (
    if exist "%%F\%SOURCE_FILE%" (
        copy /Y "%SOURCE_FILE%" "%%F\%SOURCE_FILE%"
        echo Replaced %SOURCE_FILE% in %%F
    )
)

echo Done!
pause

