@echo on

robocopy ".\install\include" "%LIBRARY_INC%" /S /E
if %ERRORLEVEL% GEQ 8 exit 1

if not exist %LIBRARY_LIB% mkdir %LIBRARY_LIB%

copy /Y ".\install\lib\ze_loader.lib" "%LIBRARY_LIB%"
if errorlevel 1 exit 1

if not exist "%LIBRARY_LIB%\ze_loader.lib" exit 1

REM LAYER DLL files are not correctly installed by Level-Zero
REM CMakeLists.txt. They are skipped on Windows for now, and hence 
REM LIB files are not copied as well. See
REM    https://github.com/oneapi-src/level-zero/pull/122

REM copy /Y ".\install\lib\ze_tracing_layer.lib" "%LIBRARY_LIB%"
REM if %ERRORLEVEL% 1 exit 1

REM copy /Y ".\install\lib\ze_validation_layer.lib" "%LIBRARY_LIB%"
REM if %ERRORLEVEL% 1 exit 1

