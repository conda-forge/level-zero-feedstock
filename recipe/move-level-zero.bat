@echo on

if not exist %LIBRARY_BIN% mkdir %LIBRARY_BIN%

copy /Y ".\install\bin\ze_loader.dll" "%LIBRARY_BIN%"
if errorlevel 1 exit 1

if not exist "%LIBRARY_BIN%\ze_loader.dll" exit 1

REM LAYER DLL files are not correctly installed by Level-Zero
REM CMakeLists.txt. They are skipped on Windows for now. See
REM    https://github.com/oneapi-src/level-zero/pull/122

REM copy /Y ".\install\bin\ze_tracing_layer.dll" "%LIBRARY_BIN%"
REM if errorlevel 1 exit 1

REM copy /Y ".\install\bin\ze_validation_layer.dll" "%LIBRARY_BIN%"
REM if errorlevel 1 exit 1

