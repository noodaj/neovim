vim.g.mapleader = " "

--prob not needed anymore
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--moving lines
vim.keymap.set("v", "<C-J>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-K>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-J>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-K>", ":m '<-2<CR>gv=gv")

-- movement centering NORMAL
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- movement centering VISUAL
vim.keymap.set("v", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "n", "nzz")
vim.keymap.set("v", "N", "Nzz")

-- best remap of all time
vim.keymap.set("x", "<leader>p", '"_dP')

-- yank x amount of lines
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

-- select all and copy
vim.keymap.set("n", "<C-a>", "ggVG")
vim.keymap.set("v", "<C-c>", ":%y+<CR>")

-- replacing all instance of
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- save
vim.keymap.set("n", "<C-s>", ":w!<CR>")

-- buffer switching
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- center after jumping files
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<A-h>", ":Cheatsheet<CR>")
