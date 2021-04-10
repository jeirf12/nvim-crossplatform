# Neovim Settings on Windows 🚀

_This configuration is modularized for the windows operating system_

## Pre-Requisites 📋

_You need to have the following software installed before applying this configuration_

*[neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
*[git](https://git-scm.com/downloads)
*[npm](https://www.npmjs.com/get-npm) or [yarn](https://classic.yarnpkg.com/en/docs/install#windows-stable) 
*[python](https://www.python.org/downloads/)

## Installation 🔧

_First check if this folder exists **~\AppData\local\nvim** :_

```
$ mkdir ~\AppData\Local\nvim
```
_Then enter the repository folder, open a console inside and run the following:_
```
$ move config* ~\AppData\Local\nvim
```
```
$ move init.vim ~\AppData\Local\nvim
```
```
$ move .vimrc %USERPROFILE% 
```

## Post-Requisites 🛠️

_You need the following software installed after installation:_

*[vim-plug](https://github.com/junegunn/vim-plug) - Plugin package manager
*[kite](https://www.kite.com/integrations/vim/) and its [complement](https://github.com/kiteco/vim-plugin/blob/master/DEVELOPMENT.md) for neovim - Autocomplete IA for Python

## Execution ⚙️

_When you run for the first time you have to write the following inside neovim:_
```
$ :PlugInstall 
```
_or press the following keys_
```
$ <space><p><i> 
```
_The latter installs all the plugins configured in the files_
