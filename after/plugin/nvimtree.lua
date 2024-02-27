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
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	update_focused_file = {
		enable = true,
		debounce_delay = 15,
	},
	actions = {
		use_system_clipboard = true,
		change_dir = {
			enable = false,
			global = true,
			restrict_above_cwd = true,
		},
	},
	tab = {
		sync = {
			open = true,
			close = true,
		},
	},
})

vim.keymap.set("n", "<C-e>", ":NvimTreeOpen<CR>")
