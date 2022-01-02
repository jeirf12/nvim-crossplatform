#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#Colores aplicables
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT

function ctrl_c(){
	echo -e "\n${yellowColour}[*]${endColour}${grayColour} Saliendo...${endColour}"
	tput cnorm;
	exit 0
}

function existSettings(){
	tput civis; clear
	echo -e "\n${purpleColour}[*]${endColour}${blueColour} comprobando la existencia de configuraciones en neovim${endColour}"
	sleep 2
	flag=0
	test -d ~/.config/nvim/
	if [ "$?" == "0" ]; then
		flag=$((flag + 1))
	fi
	test -f ~/.config/.vimrc
	if [ "$?" == "0" ]; then
		flag=$((flag + 1))
	fi
	test -d ~/.vim/plugged/
	if [ "$?" == "0" ]; then
		flag=$((flag + 1))
	fi
	test -d ~/.config/coc/
	if [ "$?" == "0" ]; then
		flag=$((flag + 1))
	fi
	if [ "$flag" -eq "0" ]; then
		echo -e "\n${yellowColour} No se puede desinstalar, porque no existe referencias del programa${endColour}"
		ctrl_c
	fi;
	echo -e "\n${purpleColour}[*]${endColour}${blueColour} comprobación finalizada...${endColour}"
	sleep 1
}

function uninstallSettings(){
	echo -e "\n${purpleColour}[*]${endColour}${blueColour} Desinstalando las configuraciones de neovim${endColour}"
	rm -rf ~/.config/nvim/ ~/.vimrc ~/.config/coc/ ~/.vim/plugged/ > /dev/null 2>&1

	#Por ultimo instala requerimientos de python
	echo -e "\n${purpleColour}[*]${endColour}${blueColour} Desinstalando${endColour}${redColour} pynvim${endColour}"
	pip uninstall pynvim > /dev/null 2>&1
	echo -e "\n${purpleColour}[*]${endColour}${grayColour} Desinstalación Finalizada...${endColour}"
	sleep 3; tput cnorm
}

# Inicia el script de desinstalación
existSettings
uninstallSettings
# Termina el script de desinstalación
