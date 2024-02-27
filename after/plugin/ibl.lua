local hl_list = {}
for i, color in pairs({ "#ffff40", "#7fff7f", "#ff7fff", "#4fecec" }) do
	local name = "IndentBlanklineIndent" .. i
	vim.api.nvim_set_hl(0, name, { fg = color })
	table.insert(hl_list, name)
end

local highlight = {
	"RainbowRed",
	"RainbowYellow",
	"RainbowBlue",
	"RainbowOrange",
	"RainbowGreen",
	"RainbowViolet",
	"RainbowCyan",
}

local hooks = require("ibl.hooks")
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
	vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
	vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
	vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
	vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
	vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
	vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

require("ibl").setup({
	indent = { highlight = highlight, char = "▏", priority = 1, smart_indent_cap = true },
	whitespace = {
		-- highlight = { "Whitespace", "NonText", "LineNr", "IblIndent", "IblWhitespace", "IblScope" },
		highlight = highlight,
		remove_blankline_trail = false,
	},
	scope = {
		enabled = false,
		show_exact_scope = false,
		highlight = "IblIndent",
		show_start = true,
		show_end = false,
		-- char = "→",
	},
})
