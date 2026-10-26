@echo off
rem Run lab_2.exe on 1, 2, ..., 12 processes one after another.
cd /d "%~dp0"

for /L %%n in (1,1,12) do (
    echo ===== mpiexec -n %%n =====
    mpiexec -n %%n x64\Release\lab_2.exe
    echo.
)

pause
