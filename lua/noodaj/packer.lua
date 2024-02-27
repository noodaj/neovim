-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use({
		{ "olivercederborg/poimandres.nvim" },
		{ "rebelot/kanagawa.nvim" },
		{ "navarasu/onedark.nvim" },
		{ "wbthomason/packer.nvim" },
		{ "nvim-telescope/telescope.nvim", tag = "0.1.5", requires = { { "nvim-lua/plenary.nvim" } } },
		{ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } },
		{ "nvim-treesitter/playground" },
		{ "tpope/vim-fugitive" },
		{
			"VonHeikemen/lsp-zero.nvim",
			branch = "v3.x",
			requires = {
				--- Uncomment the two plugins below if you want to manage the language servers from neovim
				--- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
				{ "neovim/nvim-lspconfig" },
				{ "williamboman/mason.nvim" },
				{ "williamboman/mason-lspconfig.nvim" },
				{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
				{ "hrsh7th/nvim-cmp" },
				{ "hrsh7th/cmp-nvim-lsp" },
				{ "hrsh7th/cmp-buffer" },
				{ "hrsh7th/cmp-path" },
				{ "saadparwaiz1/cmp_luasnip" },
				{ "hrsh7th/cmp-nvim-lua" },
				{ "L3MON4D3/LuaSnip" },
				{ "rafamadriz/friendly-snippets" },
			},
		},
		{ "nvim-tree/nvim-tree.lua" },
		{ "nvim-tree/nvim-web-devicons" },
		{ "nvim-lualine/lualine.nvim" },
		{ "m4xshen/autoclose.nvim" },
		{ "numToStr/Comment.nvim" },
		{ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } },
		{ "mhartington/formatter.nvim" },
		{ "romgrk/barbar.nvim" },
		{ "akinsho/toggleterm.nvim", version = "*" },
		{ "stevearc/dressing.nvim" },
		{ "sudormrfbin/cheatsheet.nvim" },
		{ "kylechui/nvim-surround" },
		{
			"lukas-reineke/indent-blankline.nvim",
			-- config = function()
			-- 	local opts = {
			-- 		indent = { highlight = "IblIndent", char = "▏", priority = 1, smart_indent_cap = true },
			-- 		whitespace = {
			-- 			highlight = { "Whitespace", "NonText", "LineNr", "IblIndent", "IblWhitespace", "IblScope" },
			-- 			remove_blankline_trail = false,
			-- 		},
			-- 		scope = {
			-- 			show_exact_scope = false,
			-- 			highlight = "IblIndent",
			-- 			show_start = false,
			-- 			show_end = false,
			-- 			-- char = "→",
			-- 		},
			-- 	}
			-- 	require("ibl").setup(require("indent-rainbowline").make_opts())
			-- end,
			-- requires = {
			-- 	"TheGLander/indent-rainbowline.nvim",
			-- },
		},
	})

	--vim.cmd('colorscheme poimandres')
end)
