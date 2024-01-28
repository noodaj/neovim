-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup({
	open_on_tab = true,
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 25,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	update_cwd = true,
	update_focused_file = {
		enable = true,
		debounce_delay = 15,
		update_root = true,
		ignore_list = {},
	},
})

vim.keymap.set("n", "<C-e>", ":NvimTreeOpen<CR>")
