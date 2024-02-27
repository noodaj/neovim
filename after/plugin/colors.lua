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
	require("poimandres").setup({
		bold_vert_split = false,
	})
	require("onedark").setup({ style = "darker" })

	vim.cmd.colorscheme("onedark")
	-- vim.cmd.colorscheme("poimandres")
	-- vim.cmd("colorscheme kanagawa")
end

Color()
