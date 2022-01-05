#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#Colores aplicables
greenColour="\e[0;32m\033[1m"
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

function statusDependencies(){
	tput civis
	clear; dependencies=(nvim git npm yarn python pip)
	echo -e "${yellowColour}[*]${endColour}${grayColour} Comprobando programas necesarios...${endColour}"
	sleep 2
	counter=0
	for program in "${dependencies[@]}"; do
		echo -ne "\n${yellowColour}[*]${endColour}${blueColour} Herramienta${endColour}${purpleColour} $program${endColour}${blueColour}...${endColour}"
		test -f "/usr/bin/$program"
		if [ "$?" == "0" ]; then
			echo -e " ${greenColour}(V)${endColour}"
		else
			echo -e " ${redColour}(X)${endColour}"
			counter=$((counter + 1))
		fi; sleep 1
	done
	if [[ "$counter" -gt "1" ]]; then
		echo -e "\n\n${yellowColour} Vuelva a instalar los programas necesarios para seguir la instalación${endColour}"
		ctrl_c
	fi; sleep 1
}

function installSettings(){
	echo -e "\n${yellowColour}[*]${endColour}${blueColour} Instalando las configuraciones de neovim${endColour}"
	#Obtiene la ruta donde se encuentra el repositorio
	path=$(pwd)

	#Coloco la ruta donde va a crear la carpeta
	pathCreated=~/.config/nvim/

	#Comprueba la existencia de la carpeta
	if [[ ! -d $pathCreated ]]; then
		#Crea las carpetas si no existe de forma recursiva
		mkdir -p $pathCreated 
	fi

	#Comprueba la existencia de los archivos conf 
	if [[ -e $pathconfigFunctions.vimrc ]] &&	[[ -e $pathconfigCommands.vimrc ]] && [[ -e $pathconfigNative.vimrc ]] && [[ -e $pathconfPlugins.vimrc ]] && [[ -e $pathconfigRulers.vimrc ]]; then
		#Copia o mueve las configuraciones en la carpeta creada 
		#en el anterior paso
		mv "$pathconfigNative.vimrc" "$pathCreated"
		mv "$pathconfigPlugins.vimrc" "$pathCreated"
		mv "$pathconfigRulers.vimrc" "$pathCreated"
		mv "$pathconfigCommands.vimrc" "$pathCreated"
		mv "$pathconfigFunctions.vimrc" "$pathCreated"
	fi

	ls "$pathconfig.json" >> /dev/null 2>1& && mv "$pathconfig.json" "$pathCreated"

	#Fijo la ruta de origen
	pathSource=$path/init.vim

	#Fijo la ruta de destino
	pathDestination=$pathCreated

	#Comprueba la existencia del archivo origen
	if [[ -e $pathSource ]]; then
		#Mueve el archivo a la ruta destino
		mv "$pathSource" "$pathDestination"
	fi

	#Fijo la ruta de origen
	pathSource=$path/.vimrc

	#Comprueba la existencia del archivo origen
	if [[ -e $pathSource ]]; then
		#Mueve el archivo a la ruta destino
		mv "$pathSource" "$pathDestination"
	fi

	if [[ -e ~/.vimrc ]]; then
		rm ~/.vimrc
	fi

	ln -s "$pathDestinationinit.vim" ~/.vimrc

	#Por ultimo instala requerimientos de python
	echo -e "\n${yellowColour}[*]${endColour}${blueColour} Instalando${endColour}${purpleColour} pynvim${endColour}"
	pip install pynvim > /dev/null 2>&1
	echo -e "\n${yellowColour}[*]${endColour}${grayColour} Instalación Finalizada...${endColour}"
	tput cnorm; sleep 2
}

# Inicia el script de instalación
statusDependencies
installSettings
# Termina el script de instalación
