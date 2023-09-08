@echo on

robocopy /E ".\install\include\*" "%LIBRARY_INC%"
if %ERRORLEVEL% GEQ 8 exit 1

robocopy /E ".\install\lib\ze_loader.lib" "%LIBRARY_LIB%"
if %ERRORLEVEL% GEQ 8 exit 1

robocopy /E ".\install\lib\ze_tracing_layer.lib" "%LIBRARY_LIB%"
if %ERRORLEVEL% GEQ 8 exit 1

robocopy /E ".\install\lib\ze_validation_layer.lib" "%LIBRARY_LIB%"
if %ERRORLEVEL% GEQ 8 exit 1

