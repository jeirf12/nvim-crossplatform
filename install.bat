@echo off

:: Toda este codigo se necesita para los colores
for /F %%a in ('echo prompt $E ^| cmd') do (
    set "ESC=%%a"
)
:: Se puede denifir mas codigos de colores aqui
:: OJO: no borrar el endColour porque puede ocasionar 
:: variaciones en la ejecucion de este codigo

set redColour=%ESC%[31m
set greenColour=%ESC%[32m
set yellowColour=%ESC%[33m
set blueColour=%ESC%[34m
set purpleColour=%ESC%[35m
set grayColour=%ESC%[37m
set endColour=%ESC%[0m

:statusDependencies
cls
setlocal enabledelayedexpansion
set flag= 0
set dependencies=nvim git yarn python pip npm
echo %yellowColour%[*]%endColour%%grayColour% Comprobando programas necesarios...%endColour%
for %%a in (%dependencies%) do (
    echo/
    <NUL set/p data=%yellowColour%[*]%endColour%%blueColour% Herramienta%endColour%%purpleColour% %%a %endColour%%blueColour%...%endColour%
    call %%a --version >output.txt 2>&1
    type output.txt | find /c /v "" >line.txt
    set/p counter=< line.txt
    timeout /t 2 /nobreak > NUL 
    if /i !counter!==2 (
        echo/ %redColour%X%endColour%
        set/a flag+=1
    ) else ( echo/ %greenColour%V%endColour% )
)
del output.txt line.txt
if %flag% geq 2 ( 
    echo/
    echo %yellowColour% Vuelva a instalar los programas necesarios para seguir la instalacion %endColour%
    goto :exitProgram
) else ( 
    timeout /t 3 /nobreak > NUL 
    goto :installSettings
)

:installSettings
echo/
echo %yellowColour%[*]%endColour%%blueColour% Instalando las configuraciones de neovim...%endColour%

REM Fija la ruta de la carpeta donde se guarda los datos
set pathDestination=%USERPROFILE%\AppData\Local\nvim\

REM Comprueba la existencia de la carpeta antes de crearla
if not exist %pathDestination% (mkdir %pathDestination%)

REM Comprueba la existencia de los archivos config antes de ejecutar el comando
if exist config* (move config* %pathDestination%)

REM Comprueba la existencia del archivo init.vim antes de ejecutar el comando
if exist init.vim (move init.vim %pathDestination%)

REM Comprueba la existencia del archivo .vimrc antes de ejecutar el comando
if exist .vimrc (move .vimrc %USERPROFILE%)
timeout /t 4 /nobreak > NUL 

echo/
echo %yellowColour%[*]%endColour%%blueColour% Instalando plugin de python...%endColour%%purpleColour% pynvim%endColour%
pip install pynvim >NUL 2>&1
timeout /t 3 /nobreak > NUL 
echo/
echo %yellowColour%[*]%endColour%%grayColour% Instalacion finalizada...%endColour%
timeout /t 1 /nobreak > NUL 

:exitProgram
echo/
echo %yellowColour%[*]%endColour%%grayColour% saliendo...%endColour%
pause
cls
