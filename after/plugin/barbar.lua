require("barbar").setup({
	animation = false,
	clickable = true,
	insert_at_end = true,
	highlight_visible = true,
	sidebar_filetypes = {
		NvimTree = true,
	},
	icons = {
		buffer_index = true,
		button = "",
		gitsigns = {
			added = { enabled = true, icon = "+" },
			changed = { enabled = true, icon = "~" },
			deleted = { enabled = true, icon = "-" },
		},
		filename = true,
		diagnostics = {
			{ enabled = true },
			{ enabled = true },
			{ enabled = true },
			{ enabled = true },
			{ enabled = true },
		},
	},
	tabpages = true,
	modified = { button = "●" },
	current = { buffer_index = true },
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<A-,>", ":BufferPrevious<CR>", opts)
vim.keymap.set("n", "<A-.>", ":BufferNext<CR>", opts)
vim.keymap.set("n", "<C-q>", ":BufferClose<CR>", opts)

vim.keymap.set("n", "<A-1>", ":BufferGoto 1<CR>", opts)
vim.keymap.set("n", "<A-2>", ":BufferGoto 2<CR>", opts)
vim.keymap.set("n", "<A-3>", ":BufferGoto 3<CR>", opts)
vim.keymap.set("n", "<A-4>", ":BufferGoto 4<CR>", opts)
vim.keymap.set("n", "<A-5>", ":BufferGoto 5<CR>", opts)
vim.keymap.set("n", "<A-6>", ":BufferGoto 6<CR>", opts)
vim.keymap.set("n", "<A-7>", ":BufferGoto 7<CR>", opts)
vim.keymap.set("n", "<A-8>", ":BufferGoto 8<CR>", opts)
vim.keymap.set("n", "<A-9>", ":BufferGoto 9<CR>", opts)
vim.keymap.set("n", "<A-0>", ":BufferLast<CR>", opts)
