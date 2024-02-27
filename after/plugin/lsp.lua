local lsp_zero = require("lsp-zero")

--LSP ZERO
lsp_zero.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, noremap = false }

	vim.keymap.set("n", "<leader>gd", ":Telescope lsp_definitions<CR>", opts)
	vim.keymap.set("n", "<leader>gr", ":Telescope lsp_references<CR>", opts)
	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts)

	-- code action
	vim.keymap.set("n", "<leader>ca", function()
		vim.lsp.buf.code_action()
	end, opts)
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_next()
	end, opts)

	-- rename
	vim.keymap.set("n", "<leader>rn", function()
		vim.lsp.buf.rename()
	end, opts)

	-- documentation for under cursor
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)

	-- function signature help
	vim.keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, opts)
end)

lsp_zero.set_sign_icons({ error = " ", warn = " ", hint = "󰠠 ", info = " " })

-- LSP CONFIG
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local function organize_imports()
	local params = {
		command = "_typescript.organizeImports",
		arguments = { vim.api.nvim_buf_get_name(0) },
	}
	vim.lsp.buf.execute_command(params)
end

lspconfig.tsserver.setup({
	capabilities = capabilities,
	commands = {
		OrganizeImports = {
			organize_imports,
			description = "Organize Imports",
		},
	},
	settings = {
		completions = {
			completeFunctionCalls = true,
		},
	},
})

lspconfig.pylsp.setup({
	settings = {
		pylsp = {
			plugins = {
				pylint = { enabled = false },
				-- pyflakes = { enabled = false },
				pycodestyle = { enabled = false },
			},
		},
		completions = {
			completeFunctionCalls = true,
		},
	},
	capabilities = capabilities,
})
-- MASON
require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = { "tsserver", "pyright", "lua_ls", "html", "cssls", "tailwindcss" },
	handlers = {
		lsp_zero.default_setup,
		lua_ls = function()
			local lua_opts = lsp_zero.nvim_lua_ls()
			require("lspconfig").lua_ls.setup(lua_opts)
		end,
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"black",
	},
})

-- CMP
local cmp = require("cmp")
local luasnip = require("luasnip")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	experimental = {
		ghost_text = true,
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{
			name = "nvim_lsp",
			entry_filter = function(entry, ctx)
				return require("cmp.types").lsp.CompletionItemKind[entry:get_kind()] ~= "Text"
			end,
		},
		{ name = "nvim_lua" },
		{ name = "luasnip", keyword_length = 2 },
		{
			name = "buffer",
			keyword_length = 3,
			entry_filter = function(entry, ctx)
				return require("cmp.types").lsp.CompletionItemKind[entry:get_kind()] ~= "Text"
			end,
		},
	}, { name = "buffer" }),
	formatting = lsp_zero.cmp_format(),
	mapping = cmp.mapping.preset.insert({
		["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
		["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
		["<tab>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
	}),
})

cmp.setup.cmdline({ "/", "?", ":" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})
