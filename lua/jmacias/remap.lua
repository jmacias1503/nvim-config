vim.g.mapleader = " "

-- Abrir explorador
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- Mover region de codigo
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copiar codigo al portapapeles
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Reemplazar palabra dentro del archivo
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
