return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { 
          "lua_ls",
          "phpactor",
          "vuels",
          "html",
          "jsonls",
          "bashls",
          "sqlls",
        },
			})
		end,
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
      lspconfig.tsserver.setup({})
      lspconfig.vuels.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.sqlls.setup({})
		end,
	},
}
