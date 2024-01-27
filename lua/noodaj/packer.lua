-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use({
		{ "wbthomason/packer.nvim" },
		{ "nvim-telescope/telescope.nvim", tag = "0.1.5", requires = { { "nvim-lua/plenary.nvim" } } },
		{ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } },
		{ "rebelot/kanagawa.nvim" },
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
		{
			"nvim-tree/nvim-tree.lua",
			requires = { "nvim-tree/nvim-web-devicons" },
		},
		{
			"nvim-lualine/lualine.nvim",
			requires = { "nvim-tree/nvim-web-devicons", opt = true },
		},
		{ "m4xshen/autoclose.nvim" },
		{ "numToStr/Comment.nvim" },
		{ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } },
		{ "HiPhish/rainbow-delimiters.nvim" },
		{ "mhartington/formatter.nvim" },
	})

	--[[ use ({
    'olivercederborg/poimandres.nvim',
    config = function()
      require('poimandres').setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      }
    end
  }) ]]
	--vim.cmd('colorscheme poimandres')
end)
