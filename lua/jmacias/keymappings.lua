vim.g.mapleader = " "
-- Move code region
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copy text to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Replace whole word in the entire file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Creation and tab movement
vim.keymap.set("n", "<leader>tn", vim.cmd.tabNext)
vim.keymap.set("n", "<leader>nt", vim.cmd.tabnew)

-- Wrapping shortcuts
vim.keymap.set("n", "<leader>yw", ":set wrap<CR>")
vim.keymap.set("n", "<leader>nw", ":set nowrap<CR>")

-- Spell checking (on the go)
vim.keymap.set({"n", "i"}, "<C-l>", [[<Esc>[s 1z= A]])
vim.keymap.set("n","<leader>ns", ":set spelllang=<CR>")

-- Starting Lsp corrections
vim.keymap.set("n", "<leader><Space>", ":LspStart<CR>")
