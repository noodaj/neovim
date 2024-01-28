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
	},
})

opts = { noremap = true, silent = true }
vim.keymap.set("n", "<A-,>", ":BufferPrevious<CR>", opts)
vim.keymap.set("n", "<A-.>", ":BufferNext<CR>", opts)
vim.keymap.set("n", "<C-q>", ":BufferClose<CR>", opts)
