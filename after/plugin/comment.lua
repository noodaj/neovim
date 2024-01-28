require("Comment").setup({
	padding = true,
	sticky = true,
	ignore = nil,
	---LHS of toggle mappings in NORMAL mode
	toggler = {
		line = "<C-/>",
		block = "<C-/>",
	},
	---LHS of operator-pending mappings in NORMAL and VISUAL mode
	opleader = {
		line = "<C-/>",
		block = "<C-/>",
	},
})
