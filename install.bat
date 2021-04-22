@echo off
mkdir ~\AppData\Local\nvim
move config* ~\AppData\Local\nvim
move init.vim ~\AppData\Local\nvim
move .vimrc %USERPROFILE%
