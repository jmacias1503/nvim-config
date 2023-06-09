vim.g.mapleader = " "

-- Open neovim file explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

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

-- Jump to the dashboard homepage
vim.keymap.set("n", "<leader>db", vim.cmd.Dashboard)

-- Open NERDTree
vim.keymap.set("n", "<leader>ef", vim.cmd.NERDTreeToggle)

-- Compile a file (mostly common in Markdown
vim.keymap.set("n", "<leader>cm", [[:!pandoc <C-r><C-w>.md -o <C-r><C-w>.pdf<Left><Left><Left><Left><Left><Left>]] )

-- Open Todo List
