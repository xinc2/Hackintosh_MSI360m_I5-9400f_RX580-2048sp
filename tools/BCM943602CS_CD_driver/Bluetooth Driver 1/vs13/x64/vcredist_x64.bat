PUSHD .
@cd /D "%~dp0"

@setlocal
@set logfile="%temp%\bcm_vc110redist_x64.log"

@echo [%date% %time%] START vcredist_x64.exe /q >> %logfile%
.\vcredist_x64.exe /q

@if errorlevel 0 echo vcredist_x64.exe exited with errorlevel=%errorlevel% >> %logfile%
@echo [%date% %time%] END vcredist_x64.exe /q >> %logfile%

@endlocal
POPD
