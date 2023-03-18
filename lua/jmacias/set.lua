--- Atajos locales
local g = vim.g
local o = vim.o

-- Mejora la interfaz
o.numberwidth = 6
o.number = true
o.relativenumber = true
o.signcolumn = 'yes'
o.cursorline = true
o.guicursor = ""
o.conceallevel = 2

-- Numero de lineas arriba y abajo del cursor
o.scrolloff = 18

-- Busqueda de texto dentro de un archivo
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.incsearch = true

-- Comunicacion entre texto copiado y neovim
o.clipboard = 'unnamedplus'

-- Indentacion de 3 espacios
o.tabstop = 3
o.softtabstop = 3
o.shiftwidth = 3
o.expandtab = true

-- Indentacion inteligente
o.smartindent = true

--Colores de la terminal
o.termguicolors = true
vim.cmd("syntax on")

-- Nose pa q sirve xd
vim.opt.updatetime = 50
vim.cmd("set nocompatible")

-- Uso del plugin colorizer de forma automatica
require 'colorizer'.setup()

o.guifont = 'Hurmit Nerd Font'

-- Coso para plugins?
vim.cmd("filetype plugin on")
