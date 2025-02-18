return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"phpactor",
				"vuels",
				"html",
				"jsonls",
				"bashls",
				"sqlls",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			lspconfig.phpactor.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.vuels.setup({})
			lspconfig.html.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.sqlls.setup({})
		end,
	},
}
