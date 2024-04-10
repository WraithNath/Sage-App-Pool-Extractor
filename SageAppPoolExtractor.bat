ECHO OFF
CLS
ECHO [Sage App Pool Details Extractor] - Nathan Freeman-Smith - 2024
ECHO.
SET dir= %CD%
CD c:\Windows\System32\inetsrv
ECHO [Sage 200 Secured Services]
SET usr=
SET pwd=
FOR /f "delims=" %%A in ('appcmd.exe list apppool "Sage 200 Secured Services" /text:* ^| find "userName"') do set "usr=%%A"
ECHO %usr%
FOR /f "delims=" %%A in ('appcmd.exe list apppool "Sage 200 Secured Services" /text:* ^| find "password"') do set "pwd=%%A"
ECHO %pwd%
ECHO.
ECHO [Sage 200 Services]
FOR /f "delims=" %%A in ('appcmd.exe list apppool "Sage 200 Services" /text:* ^| find "userName"') do set "usr=%%A"
ECHO %usr%
FOR /f "delims=" %%A in ('appcmd.exe list apppool "Sage 200 Services" /text:* ^| find "password"') do set "pwd=%%A"
ECHO %pwd%
ECHO.
ECHO [Sage 200 Self Service]
FOR /f "delims=" %%A in ('appcmd.exe list apppool "Sage 200 Self Service" /text:* ^| find "userName"') do set "usr=%%A"
ECHO %usr%
FOR /f "delims=" %%A in ('appcmd.exe list apppool "Sage 200 Self Service" /text:* ^| find "password"') do set "pwd=%%A"
ECHO %pwd%
CD %dir%
ECHO.
PAUSE
