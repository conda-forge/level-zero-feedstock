@echo on

if not exist "%PREFIX%/lib" mkdir "%PREFIX%/lib"

robocopy /E ".\install\bin\ze_loader.dll" "%LIBRARY_BIN%"
if %ERRORLEVEL% GEQ 8 exit 1

robocopy /E ".\install\bin\ze_tracing_layer.dll" "%LIBRARY_BIN%"
if %ERRORLEVEL% GEQ 8 exit 1

robocopy /E ".\install\bin\ze_validation_layer.dll" "%LIBRARY_BIN%"
if %ERRORLEVEL% GEQ 8 exit 1

