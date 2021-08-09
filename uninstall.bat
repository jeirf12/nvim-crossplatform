@echo off

:: Todo este fragmento de código se necesita para los colores
for /F %%a in ('echo prompt $E ^| cmd') do (
    set "ESC=%%a"
)
:: Se puede denifir mas codigos de colores aqui
:: OJO: no borrar el endColour porque puede ocasionar 
:: variaciones en la ejecucion de este codigo

set redColour=%ESC%[31m
set yellowColour=%ESC%[33m
set blueColour=%ESC%[34m
set purpleColour=%ESC%[35m
set grayColour=%ESC%[37m
set endColour=%ESC%[0m

REM Fija la ruta de la carpeta donde se guarda los datos
set pathCentral=%USERPROFILE%\AppData\Local\

REM Fija la ruta de la carpeta donde se guarda los datos
set pathNvim=%pathCentral%\nvim\

REM Fija la ruta de la carpeta donde se guarda datos temporales
set pathNvimdata=%pathCentral%\nvim-data\

REM Fija la ruta de la carpeta donde se guarda las configuraciones de coc 
set pathCoc=%pathCentral%\coc\

REM Fija la ruta de la carpeta donde se guarda los plugins instalados
set pathPlugged=%USERPROFILE%\plugged\

REM Fija la ruta del archivo central de neovim
set archiveCentral=%USERPROFILE%\.vimrc

:existSettings
cls
setlocal enabledelayedexpansion
echo %purpleColour%[*]%endColour%%blueColour% Comprobando la existencia de configuraciones en el equipo...%endColour%
set flag= 0

if exist %pathNvim% ( set/a flag+=1 )

if exist %pathNvimdata% ( set/a flag+=1 )

if exist %pathCoc% ( set/a flag+=1 )

if exist %pathPlugged% ( set/a flag+=1 )

if exist %archiveCentral% ( set/a flag+=1 )

timeout /t 2 /nobreak > NUL 

if %flag% equ 0 (
    echo/
    echo %yellowColour% No se puede desinstalar, porque no existen referencias del programa %endColour%
    goto :exitProgram
) else ( 
    timeout /t 3 /nobreak > NUL 
    goto :uninstallSettings
)

:uninstallSettings
echo/
echo %purpleColour%[*]%endColour%%blueColour% Desinstalando las configuraciones de neovim...%endColour%

rd /s /q %pathNvim% %pathNvimdata% %pathPlugged% %pathCoc% > NUL 2>&1 
del %archiveCentral% > NUL 2>&1
timeout /t 4 /nobreak > NUL 

echo/
echo %purpleColour%[*]%endColour%%blueColour% Desinstalando plugin de python...%endColour%%redColour% pynvim%endColour%
pip uninstall pynvim >NUL 2>&1
timeout /t 3 /nobreak > NUL 
echo/
echo %purpleColour%[*]%endColour%%blueColour% Desinstalacion finalizada...%endColour%
timeout /t 1 /nobreak > NUL

:exitProgram
echo/
echo %yellowColour%[*]%endColour%%grayColour% saliendo...%endColour%
pause
cls
