function Color(color)
	--color = color or "poimandres"
	color = color or "kanagawa"

	require("kanagawa").setup({
		compile = false,
		undercurl = true,
		commentStyle = { italic = true },
		functionStyle = {},
		keywordStyle = { italic = false },
		statementStyle = { bold = true },
		typeStyle = {},
		transparent = false,
		dimInactive = false,
		terminalColors = true,
		theme = "wave",
	})
	--vim.cmd.colorscheme(color)
	vim.cmd("colorscheme poimandres")
end

Color()
