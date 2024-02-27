require("cheatsheet").setup({
	bundled_cheatsheets = false,
	bundled_plugin_cheatsheets = true,
	include_only_installed_plugins = true,
	telescope_mappings = {
		["<CR>"] = require("cheatsheet.telescope.actions").select_or_execute,
	},
})
