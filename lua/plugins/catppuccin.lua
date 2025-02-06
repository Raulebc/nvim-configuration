return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        integrations = {
          cmp = true,
          telescope = true,
          treesitter = true,
          native_lsp = {
            enabled = true,
          },
        }
      })

      vim.cmd.colorscheme("catppuccin")
		end,
	},
}
