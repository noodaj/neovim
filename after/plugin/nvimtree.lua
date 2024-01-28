-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local function on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	api.config.mappings.default_on_attach(bufnr)
	--vim.keymap.set("n", "<C-q>", api.node.open.tab, opts("Open: New Tab"))
	--vim.keymap.set("n", "<CR>", api.node.open.tab())
	--vim.keymap.set("n", "o", api.node.open.tab()) ]]
end

require("nvim-tree").setup({
	on_attach = on_attach,
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
