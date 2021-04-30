@echo off

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
