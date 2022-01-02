# Cross-Platform Neovim Setup 🚀
This configuration is modularized for the windows operating system

## Pre-Requisites 📋
You need to have the following software installed before applying this configuration
* [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* [git](https://git-scm.com/downloads)
* [npm](https://www.npmjs.com/get-npm) or [yarn](https://classic.yarnpkg.com/en/docs/install#windows-stable) 
* [python](https://www.python.org/downloads/) and [pip](https://pip.pypa.io/en/stable/installation/)

## Installation 🔧
Open a terminal inside the repository folder then run the following file script:

For windows use:
```
install.bat
```
For Linux use:
```
bash install.sh
```
or:
```
./install.sh
```

## Post-Requisites 🛠️
You need the following software installed after installation:
* [vim-plug](https://github.com/junegunn/vim-plug) - Plugin package manager
* [kite](https://www.kite.com/integrations/vim/) and its [complement](https://github.com/kiteco/vim-plugin/blob/master/DEVELOPMENT.md) for neovim - Autocomplete IA for Python

## Execution ⚙️
When you run for the first time you have to write the following 
inside neovim `:PlugInstall ` or press the following 
keys `<space>+<p>+<i>` The latter installs all the plugins 
configured in the files and that's it, you can now use neovim.
Finally run this `:source %` to apply the changes or just exit and re-enter neovim.

Note: If you want to know more about commands, open the file `confCommands.vimrc`.

## Uninstall :cyclone:
To uninstall the configurations just run this script:

For windows use:
```
uninstall.bat
```
For Linux use:
```
bash uninstall.sh
```
or:
```
./uninstall.sh
```
