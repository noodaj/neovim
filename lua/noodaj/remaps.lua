vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv" , vim.cmd.Ex)

vim.keymap.set("v", "<C-J>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-K>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-J>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-K>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("v", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "n", "nzz")
vim.keymap.set("v", "N", "Nzz")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<C-a>", "ggVG")
vim.keymap.set("v", "<C-c>", ":%y+<CR>")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<C-s>", ":w!<CR>")
vim.keymap.set("n", "<C-q>", ":q<CR>")

vim.keymap.set("n", "<tab>", ":tabnext<CR>")
vim.keymap.set("n", "<S-tab>", ":tabprevious<CR>")
