return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "macchiato",
			integrations = {
				cmp = true,
				telescope = true,
				treesitter = true,
				native_lsp = {
					enabled = true,
				},
			},
		},
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
