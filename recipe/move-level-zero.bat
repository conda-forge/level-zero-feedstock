@echo on

if not exist "%PREFIX%/lib" mkdir "%PREFIX%/lib"

copy /Y ".\install\bin\ze_loader.dll" "%LIBRARY_BIN%"
if %ERRORLEVEL% exit 1

copy /Y ".\install\bin\ze_tracing_layer.dll" "%LIBRARY_BIN%"
if %ERRORLEVEL% exit 1

robocopy /E ".\install\bin\ze_validation_layer.dll" "%LIBRARY_BIN%"
if %ERRORLEVEL% exit 1

