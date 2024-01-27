local builtin = require("telescope.builtin")
local actions = require("telescope.actions")
local config = require("telescope.config")
vim.keymap.set("n", "<leader>`", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

local vimgrep_arguments = { unpack(config.values.vimgrep_arguments) }

-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

require("telescope").setup({
	defaults = {
		file_ignore_patterns = { ".git", "node%_modules/." },
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},
		},
	},
})
