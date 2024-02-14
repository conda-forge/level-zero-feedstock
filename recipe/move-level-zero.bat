@echo on

if not exist %LIBRARY_BIN% mkdir %LIBRARY_BIN%

copy /Y ".\install\bin\ze_loader.dll" "%LIBRARY_BIN%"
if errorlevel 1 exit 1

if not exist "%LIBRARY_BIN%\ze_loader.dll" exit 1

copy /Y ".\install\bin\ze_tracing_layer.dll" "%LIBRARY_BIN%"
if errorlevel 1 exit 1

copy /Y ".\install\bin\ze_validation_layer.dll" "%LIBRARY_BIN%"
if errorlevel 1 exit 1

