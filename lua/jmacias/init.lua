-- Atajos locales
local g = vim.g
local o = vim.o

-- Mejora la interfaz
o.number = true
o.numberwidth = 6
o.relativenumber = true
o.signcolumn = 'yes'
o.cursorline = true

-- Numero de lineas arriba y abajo del cursor
o.scrolloff = 21

-- Busqueda de texto dentro de un archivo
o.ignorecase = true
o.smartcase = true

-- Comunicacion entre texto copiado y neovim
o.clipboard = 'unnamedplus'
