require("cheatsheet").setup({
	bundled_cheatsheets = true,
	bundled_plugin_cheatsheets = false,
	include_only_installed_plugins = false,
	telescope_mappings = {
		["<CR>"] = require("cheatsheet.telescope.actions").select_or_execute,
	},
})
